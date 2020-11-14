(* 末尾呼び出しの再帰関数をループに変換する *)
(* 大域レジスタ割り当てを実行しやすくする *)
(* expressions are assumed to be properly alpha converted *)
open Enums
open LNormal

let loop_threshold = ref 500
let unlimited = ref true
                   

(* sizeが一定以下の関数のみループにする *)
let rec size = function
  | If(_, _, _, e1, e2) | Let(_, e1, e2) | LetRec({ body = e1 }, e2) ->
     1 + size e1 + size e2
  | LetTuple(_, _, e) | Loop(_, _, _, e) -> 1 + size e
  | _ -> 1

(* ループの中には関数呼び出し，つまりAppが無いという条件を仮定する *)
(* さらにループ中には関数定義も存在しないと仮定する *)

(* 自分自身を末尾再帰呼び出しする関数が考慮の対象となる *)
let rec tail_call_exists x = function
  | If(_, _, _, e1, e2) -> tail_call_exists x e1 || tail_call_exists x e2
  | Let(_, _, e) | LetRec(_, e) | LetTuple(_, _, e) ->
     tail_call_exists x e
  | App(y, _) -> x = y
  | _ -> false (* Loop中での自身の末尾呼び出しは後述の理由から考慮しない事にする *)

let rec no_calls x = function
  | If(_, _, _, e1, e2) | Let(_, e1, e2) ->
     no_calls x e1 && no_calls x e2
  | LetRec({ body = e1 }, e2) -> no_calls x e1 && no_calls x e2
  | App(y, _) -> x <> y (* 呼び出しはx以外の関数 *)
  | LetTuple(_, _, e) | Loop(_, _, _, e) -> no_calls x e
  | _ -> true 

(* function x is convertible to loop if there's no
   nontail call of itself and all tail calls are those of itself *)
let rec convertible x = function
  | If(_, _, _, e1, e2) -> convertible x e1 && convertible x e2
  | Let(_, e1, e2) -> no_calls x e1 (* 自身の非末尾呼び出しの非存在 *)
                      && convertible x e2
  | LetRec({ name = xt; args = yts; body = e1 }, e2) ->
     no_calls x e1 && convertible x e2 (* 少々大げさだけど簡単のため *)
  | App(y, _) -> x = y (* 末尾の呼び出しは自分自身のみ *)
  | LetTuple(_, _, e) -> convertible x e
  | Loop(_, _, _, e) -> no_calls x e (* loop中に他のloopのjumpがないようにしたい *)
  (* つまり，jumpが他のloopを跨がないようにしたい *)
  | _ -> true

(* convert a convertible function body into a loop *)
(* i.e., replace App(x,zs) with a jump back to the starting point *)
(* i.e., insertion of Jump in the place where App was *)
(* l = fundef.name, ys = List.map fst fundef.args *)
let rec loop_conv l yts = function
  | If(cmp, x, y, e1, e2) ->
     If(cmp, x, y, loop_conv l yts e1, loop_conv l yts e2)
  | Let(xt, e1, e2) -> Let(xt, e1, loop_conv l yts e2) (* e1中には自身の呼び出しはない *)
  | LetRec({ name = xt; args = yts'; body = e1 }, e2) ->
     (* Letの場合と同様に，e1中には自身の呼び出しはない *)
     LetRec({ name = xt; args = yts'; body = e1 }, loop_conv l yts e2)
  | App(x, zs) when x = l -> (* 自身の末尾呼び出しの時 *)
     let yzts = List.fold_right2 (fun (y, t) z acc -> (y, z, t) :: acc)
                  yts zs [] in
     Jump(yzts, L(l)) (* スタート地点へのjump back *)
  | LetTuple(xts, y, e) -> LetTuple(xts, y, loop_conv l yts e)
  | e -> e (* Loop中には自身の末尾呼び出しはないと仮定してよい *)
(* 上の場合には自分自身以外の関数呼び出しも含まれる *)
       

(* 関数呼び出しの部分にループを埋める *)
(* やっていることはほぼインライン化 *)
(* こっちは関数のbodyではなくてcont中の話 *)
(* loopはループ化したfn *)
(* i.e., loop = Loop(L(fn.name), loop_conv fn fn.body) *)
let rec loop_inline loop e =
  let l, zs =
    (match loop with
     | Loop(L(l), yts, zs, body) -> l, zs
     | _ -> assert false) in
  match e with
  | If(cmp, x, y, e1, e2) -> If(cmp, x, y, loop_inline loop e1, loop_inline loop e2)
  | Let(xt, e1, e2) -> Let(xt, loop_inline loop e1, loop_inline loop e2)
  | LetRec({ name = xt; args = yts; body = e1 }, e2) ->
     LetRec({ name = xt; args = yts; body = loop_inline loop e1 }, loop_inline loop e2)
  | App(x,ys) when x = l -> (* メイン *) (* zsを外側で指定する必要性 *)
     (* Letの挿入に対応する操作はLNormal.substがやってくれるようになった *)
     let env = M.add_list2 zs ys M.empty in
     LNormal.subst env M.empty loop
     (* ysを新しい変数ys'にLet束縛する *)
  (* ys'はループ中で代入されるので，こうしておかないとysのスコープがループ以降に続かない *)
     (* 上の理由は真実ではないことがわかっているが，のちにこの部分を使うので残してある *)
  | LetTuple(xts, y, e) -> LetTuple(xts, y, loop_inline loop e)
  | Loop(l', xts, ys, e) -> Loop(l', xts, ys, loop_inline loop e)
  (* 上記のloopの場合が必要になった *)
  | e -> e

(* ループ化可能な関数を発見してループにする *)
(* 内側から順にループ化していく *)
let rec f = function
  | If(cmp, x, y, e1, e2) -> If(cmp, x, y, f e1, f e2)
  | Let(xt, e1, e2) -> Let(xt, f e1, f e2)
  | LetRec({ name = (x,t); args = yts; body = e1 }, e2) ->
     (* if tail_call_exists x e1
      *    && convertible x e1
      *    && (size e1) <= !loop_threshold then (\* もともとループ化可能な関数の場合 *\)
      *   (Format.eprintf "convert function %s into a loop@." x;
      *    let ys' = List.map (fun (y,t) -> Id.genid y) yts in (\* 変数束縛のためのプレースホルダ *\)
      *    let loop = Loop(L(x), yts, ys', loop_conv x (List.map fst yts) e1) in
      *    f (loop_inline loop e2))
      * else *)
     let e1' = f e1 in
     if tail_call_exists x e1'
        && convertible x e1'
        && ((size e1') <= !loop_threshold
            || !unlimited) then
       (Format.eprintf "convert function %s into a loop@." x;
        let ys' = List.map (fun (y,t) -> Id.genid y) yts in (* 変数束縛のためのプレースホルダ *)
        let loop = Loop(L(x), yts, ys', loop_conv x yts e1') in
        f (loop_inline loop e2))
     else
        LetRec({ name = (x,t); args = yts; body = e1' }, f e2)
  | LetTuple(xts, y, e) -> LetTuple(xts, y, f e)
  | Loop(l, xts, ys, e) -> Loop(l, xts, ys, e) (* Loopの中身は以前の変換の際にすでに考慮している *) (* c.f. LetRecの場合 *)
  | e -> e
