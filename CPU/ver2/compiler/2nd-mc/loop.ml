(* 末尾呼び出しの再帰関数をループに変換する *)
(* 大域レジスタ割り当てを実行しやすくする *)
(* expressions are assumed to be properly alpha converted *)
open Enums
open KNormal

let loop_threshold = ref 0
let unlimited = ref false
                   

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
    (* 下の"末尾呼び出しは自身のみ"は必要ない. breakしてから呼び出したと考えれば良い *)
  (* | App(y, _) -> x = y (\* 末尾の呼び出しは自分自身のみ *\) *)
  | LetTuple(_, _, e) -> convertible x e
  | Loop(_, _, _, e) -> no_calls x e
  (* 他のループ中での自身へのjumpはない *)
  (* つまり，jumpが他のloopを跨がない *)
  | _ -> true

(* convert a convertible function body into a loop *)
(* i.e., replace App(x,zs) with a jump back to the starting point *)
(* l = fundef.name ^ "_loop", yts = fundef.args *)
(* meaningless substitution will be eliminated in elim_params *)
(* collect substituted loop parameters as a second argument *)
let rec loop_conv f l yts = function
  | If(cmp, x, y, e1, e2) ->
     let e1', s1 = loop_conv f l yts e1 in
     let e2', s2 = loop_conv f l yts e2 in
     If(cmp, x, y, e1', e2'), S.union s1 s2
  | Let(xt, e1, e2) ->
     let e2', s2 = loop_conv f l yts e2 in (* e1中には自身の呼び出しはない *)
     Let(xt, e1, e2'), s2
  | LetRec({ name = xt; args = yts'; body = e1 }, e2) ->
     let e2', s2 = loop_conv f l yts e2 in (* Letの場合と同様に，e1中には自身の呼び出しはない *)
     LetRec({ name = xt; args = yts'; body = e1 }, e2'), s2
  | App(g, zs) when g = f -> (* 自身の末尾呼び出しの時 *)
     let yzts = List.map2 (fun (y, t) z -> (y, z, t))
                  yts zs in
     let s = List.fold_left
               (fun acc (y, z, _) -> if y <> z then S.add y acc else acc)
               S.empty
               yzts in
     (if S.is_empty s then
       Format.eprintf "in %s, loop parameter is empty@." l
     else
       Format.eprintf "in %s, loop parameter is nonempty@." l);
     Jump(yzts, Id.L(l)), s (* スタート地点へのjump back *)
  | LetTuple(xts, y, e) ->
     let e', s = loop_conv f l yts e in
     LetTuple(xts, y, e'), s
  | e -> e, S.empty (* Loop中には自身の末尾呼び出しはないと仮定してよい *)
(* 上の場合には自分自身以外の関数呼び出しも含まれる *)


(* eliminate unnecessary loop parameters *)
(* let rec elim_params s = function
 *   | Loop(l, yts, zs, e) ->
 *      assert (not (S.is_empty s));
 *      let ytzs = List.combine yts zs in
 *      let ytzs' = List.filter (fun ((y, _), _) -> S.mem y s) ytzs in
 *      let yts', zs' = List.split ytzs' in
 *      let e' = elim_params_body s e in
 *      Loop(l, yts', zs', e')
 *   | _ -> assert false (\* this function is only for Loop *\) *)

let rec elim_params env = function
  | Jump(yzts, l) ->
     let yzts' =
       List.concat
         (List.map
            (fun (y, z, t) ->
              if M.mem y env then [(M.find y env, z, t)] else [])
            yzts) in
     Jump(yzts', l)
  (* Jump(List.filter (fun (y, _, _) -> S.mem y s) yzts, l) *)
  | If(cmp, x, y, e1, e2) ->
     If(cmp, x, y, elim_params env e1, elim_params env e2)
  | Let(xt, e1, e2) -> (* no jumps in e1 *)
     Let(xt, e1, elim_params env e2)
  | LetRec(fundef, e) -> (* no jumps in a func. body *)
     LetRec(fundef, elim_params env e)
  | LetTuple(xts, y, e) -> LetTuple(xts, y, elim_params env e)
  | Loop _ as e -> e (* no jumps in an other loop *)
  | e -> e


(* ループ化可能な関数を発見してループにする *)
(* 内側から順にループ化していく *)
let rec f = function
  | If(cmp, x, y, e1, e2) -> If(cmp, x, y, f e1, f e2)
  | Let(xt, e1, e2) -> Let(xt, f e1, f e2)
  | LetRec({ name = (x,t); args = yts; body = e1 }, e2) ->
     let e1' = f e1 in
     if tail_call_exists x e1'
        && convertible x e1' then
       (Format.eprintf "convert function %s into a loop@." x;
        (* 変数束縛のためのプレースホルダ *)
        let x' = Id.genid ((Id.getbody x) ^ "_loop") in
        let loop, s = loop_conv x x' yts e1' in
        let yts', ys = List.split
                         (List.map
                            (fun (y, t) -> ((Id.genid y, t), y))
                            (List.filter
                               (fun (y, t) -> S.mem y s) yts)) in
        let env = M.add_list2 ys (List.map fst yts') M.empty in
        let loop' = Alpha.g env (elim_params env loop) in
        let e1' = (Loop(Id.L(x'), yts', ys, loop')) in
        LetRec({ name = (x, t); args = yts; body = e1' }, f e2))
     else
       (Format.eprintf "function %s is not convertible to a loop@." x;
        LetRec({ name = (x,t); args = yts; body = e1' }, f e2))
  | LetTuple(xts, y, e) -> LetTuple(xts, y, f e)
  | Loop(l, xts, ys, e) ->
     (* Loopの中身は以前の変換の際にすでに考慮している *) (* c.f. LetRecの場合 *)
     (* これはあり得ない...? assertかけてもいいかも *)
     Loop(l, xts, ys, e) 
  | e -> e
