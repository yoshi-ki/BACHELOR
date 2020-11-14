(* ループ化を行ったデータ型LNormal.tをクロージャ変換するルーチン *)
(* 基本的には正規のclosure.mlと同じ *)
open Enums
type closure = { entry : Id.l; actual_fv : Id.t list }
type t = (* クロージャ変換後の式 (caml2html: closure_t) *)
  | Unit
  | Int of int
  | Float of float
  | Neg of Id.t
  | Itof of Id.t
  | In of Id.t
  | Fin of Id.t
  | Out of Id.t
  | Add of Id.t * Id.t
  | Sub of Id.t * Id.t
  | Mul of Id.t * Id.t
  | Div of Id.t * Id.t
  | FNeg of Id.t
  | Ftoi of Id.t
  | FSqrt of Id.t
  | Floor of Id.t
  | FAdd of Id.t * Id.t
  | FSub of Id.t * Id.t
  | FMul of Id.t * Id.t
  | FDiv of Id.t * Id.t
  | If of cmp * Id.t * Id.t * t * t
  | Let of (Id.t * Type.t) * t * t
  | Var of Id.t
  | MakeCls of (Id.t * Type.t) * closure * t
  | AppCls of Id.t * Id.t list
  | AppDir of Id.l * Id.t list
  | Tuple of Id.t list
  | LetTuple of (Id.t * Type.t) list * Id.t * t
  | Get of Id.t * Id.t
  | Put of Id.t * Id.t * Id.t
  | Loop of Id.l * ((Id.t * Type.t) list) * (Id.t list) * t
  (* ループ前のLetもデータ型に含める *)
  | Jump of (Id.t * Id.t * Type.t) list * Id.l (* closure.mlとのdiff *)
  | ExtArray of Id.l
type fundef = { name : Id.l * Type.t;
                args : (Id.t * Type.t) list;
                formal_fv : (Id.t * Type.t) list;
                body : t }
type prog = Prog of fundef list * t

let rec fv = function
  | Unit | Int(_) | Float(_) | ExtArray(_) -> S.empty
  | Neg(x) | Itof(x) | In(x) | Fin(x) | Out(x)
    | FNeg(x) | Ftoi(x) | Floor(x) | FSqrt(x) -> S.singleton x
  | Add(x, y) | Sub(x, y) | Mul(x, y) | Div(x, y) 
    | FAdd(x, y) | FSub(x, y) | FMul(x, y) | FDiv(x, y) | Get(x, y)
    -> S.of_list [x; y]
  | If(_,x,y,e1,e2) -> S.add x (S.add y (S.union (fv e1) (fv e2)))
  | Let((x, t), e1, e2) -> S.union (fv e1) (S.remove x (fv e2))
  | Var(x) -> S.singleton x
  | MakeCls((x, t), { entry = l; actual_fv = ys }, e)
    -> S.remove x (S.union (S.of_list ys) (fv e))
  | AppCls(x, ys) -> S.of_list (x :: ys)
  | AppDir(_, xs) | Tuple(xs) -> S.of_list xs
  | LetTuple(xts, y, e) -> S.add y (S.diff (fv e) (S.of_list (List.map fst xts)))
  | Put(x, y, z) -> S.of_list [x; y; z]
  (* 以降diff *)
  | Loop(_,yts,zs,e) -> S.union (S.of_list zs) (S.diff (fv e) (S.of_list (List.map fst yts)))
  | Jump(yzts,_) -> List.fold_left
                      (fun acc (y, z, _) -> S.add y (S.add z acc)) S.empty yzts

let toplevel : fundef list ref = ref []

(* Loop, Subst, Jumpの場合を追加 *)
let rec g env known = function (* クロージャ変換ルーチン本体 (caml2html: closure_g) *)
  | LNormal.Unit -> Unit
  | LNormal.Int(i) -> Int(i)
  | LNormal.Float(f) -> Float(f)
  | LNormal.Neg(x) -> Neg(x)
  | LNormal.Itof(x) -> Itof(x)
  | LNormal.In(x) -> In(x)
  | LNormal.Fin(x) -> Fin(x)
  | LNormal.Out(x) -> Out(x)                     
  | LNormal.Add(x, y) -> Add(x, y)
  | LNormal.Sub(x, y) -> Sub(x, y)
  | LNormal.Mul(x, y) -> Mul(x, y)
  | LNormal.Div(x, y) -> Div(x, y)
  | LNormal.FNeg(x) -> FNeg(x)
  | LNormal.Ftoi(x) -> Ftoi(x)
  | LNormal.Floor(x) -> Floor(x)
  | LNormal.FSqrt(x) -> FSqrt(x)
  | LNormal.FAdd(x, y) -> FAdd(x, y)
  | LNormal.FSub(x, y) -> FSub(x, y)
  | LNormal.FMul(x, y) -> FMul(x, y)
  | LNormal.FDiv(x, y) -> FDiv(x, y)
  | LNormal.If(cmp, x, y, e1, e2) ->
      If(cmp, x, y, g env known e1, g env known e2)
  | LNormal.Let((x, t), e1, e2)
    -> Let((x, t), g env known e1, g (M.add x t env) known e2)
  | LNormal.Var(x) -> Var(x)
  | LNormal.LetRec({ LNormal.name = (x, t); LNormal.args = yts; LNormal.body = e1 }, e2) -> (* 関数定義の場合 (caml2html: closure_letrec) *)
      (* 関数定義let rec x y1 ... yn = e1 in e2の場合は、
         xに自由変数がない(closureを介さずdirectに呼び出せる)
         と仮定し、knownに追加してe1をクロージャ変換してみる *)
     (* つまり再帰呼び出しはCallDirでやると仮定するということ *)
      let toplevel_backup = !toplevel in
      let env' = M.add x t env in
      let known' = S.add x known in
      let e1' = g (M.add_list yts env') known' e1 in
      (* 本当に自由変数がなかったか、変換結果e1'を確認する *)
      (* 注意: e1'にx自身が変数として出現する場合はclosureが必要!
         (thanks to nuevo-namasute and azounoman; test/cls-bug2.ml参照) *)
      let zs = S.diff (fv e1') (S.of_list (List.map fst yts)) in
      let known', e1' =
        if S.is_empty zs then known', e1' else
          (* zsがemptyではない場合でもe1'にx自身が変数として出現していない場合は
           *   lamba liftingによって自由変数を解決する *)
        (* 駄目だったら状態(toplevelの値)を戻して、クロージャ変換をやり直す *)
        (Format.eprintf "free variable(s) %s found in function %s@." (Id.pp_list (S.elements zs)) x;
         Format.eprintf "function %s cannot be directly applied in fact@." x;
         toplevel := toplevel_backup;
         let e1' = g (M.add_list yts env') known e1 in (* つまり再帰呼び出しもクロージャを使って呼び出す *)
         known, e1') in
      (* e1'にxが変数として出現する可能性があるが，それは自由変数ではない *)
      (* 上で自由変数からxを除かなかったのはクロージャ経由で呼び出す必要があるかどうかを確認するため *)
      (* zsは上の定義を上書きすることになるわけだが，上でemptyならもちろんここでもempty *)
      let zs = S.elements (S.diff (fv e1') (S.add x (S.of_list (List.map fst yts)))) in (* 自由変数のリスト *)
      let zts = List.map (fun z -> (z, M.find z env')) zs in (* ここで自由変数zの型を引くために引数envが必要 *)
      toplevel := { name = (Id.L(x), t); args = yts; formal_fv = zts; body = e1' } :: !toplevel; (* トップレベル関数を追加 *)
      (* env'はenvにxを追加したもの *)
      (* e2のクロージャ変換 *)
      let e2' = g env' known' e2 in
      if S.mem x (fv e2') then (* xが変数としてe2'に出現するか *)
        (* 定義時の自由変数zsをクロージャに格納する *)
        (* クロージャを作成するのはもともと関数定義があった位置 *)
        MakeCls((x, t), { entry = Id.L(x); actual_fv = zs }, e2') (* 出現していたら削除しない *)
      else
        (* e2にxが変数として出現しないというのは *)
        (* e2中でxは関数呼び出しにしか用いられないということ *)
        (Format.eprintf "eliminating closure(s) %s@." x;
         e2') (* 出現しなければMakeClsを削除 *) 
  | LNormal.App(x, ys) when S.mem x known -> (* 関数適用の場合 (caml2html: closure_app) *)
      Format.eprintf "directly applying %s@." x;
      AppDir(Id.L(x), ys)
  | LNormal.App(f, xs) -> AppCls(f, xs)
  | LNormal.Tuple(xs) -> Tuple(xs)
  | LNormal.LetTuple(xts, y, e) -> LetTuple(xts, y, g (M.add_list xts env) known e)
  | LNormal.Get(x, y) -> Get(x, y)
  | LNormal.Put(x, y, z) -> Put(x, y, z)
  | LNormal.ExtArray(x) -> ExtArray(Id.L(x))
  | LNormal.ExtFunApp(x, ys) -> AppDir(Id.L("min_caml_" ^ x), ys)
  (* 以降diff *)
  | LNormal.Loop(L(x), yts, zs, e) -> (* zsの扱いはVar(x)と同じ．つまり何もしなくていい *)
     Loop(L(x), yts, zs, g (M.add_list yts env) known e)
  | LNormal.Jump(yzts,l) -> Jump(yzts,l)

let f e =
  toplevel := [];
  let e' = g M.empty S.empty e in
  Prog(List.rev !toplevel, e')
