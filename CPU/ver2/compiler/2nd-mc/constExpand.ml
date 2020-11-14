(* のちのクロージャ変換で不必要なクロージャが生成されるのを防ぐため, グローバルな定数を各関数内に埋め込む *)
(* むやみに行うと最適化と逆行する側面もある - c.f. code hoisting - ので, クロージャ変換の前に一度だけ行う *)
(* 従って, コードはいい感じにbeta変換されている, i.e. コピーは無視するものとして考える *)

open KNormal
open Enums

let consts_of env e =
  let fv = fv e in
  S.elements (S.filter (fun x -> M.mem x env) fv)

let rec expand env = function
  | If(cmp, x, y, e1, e2) -> If(cmp, x, y, expand env e1, expand env e2)
  | Let((x, t), Const(cns), e) ->
     Let((x, t), Const(cns), expand (M.add x (cns, t) env) e)
  | LetRec({ name = xt; args = yts;  body = e1 }, e2) ->
     let consts = consts_of env e1 in
     let idenv = M.add_list
                   (List.map (fun x -> (x, Id.genid x)) consts)
                   M.empty in
     let e1' = List.fold_left
                 (fun acc x ->
                   let cns, t = M.find x env in
                   Let((M.find x idenv, t), Const(cns), acc))
                 (Alpha.g idenv e1)
                 consts in
     LetRec({ name = xt; args = yts; body = e1' }, expand env e2)
  | LetTuple(xts, y, e) -> LetTuple(xts, y, expand env e)
  | e -> e

let f = expand M.empty
