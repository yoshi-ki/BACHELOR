(* flatten let-bindings (just for prettier printing) *)

open KNormal

let rec f e =
  (* function (\* ネストしたletの簡約 (caml2html: assoc_f) *\) *)
  (* print_kNormal e; *)
  match e with
  | If(cmp, x, y, e1, e2) -> If(cmp, x, y, f e1, f e2)
  | Let(xt, e1, e2) -> (* letの場合 (caml2html: assoc_let) *)
      let rec insert = function
        | Let(yt, e3, e4) -> Let(yt, e3, insert e4)
        | LetRec(fundefs, e) -> LetRec(fundefs, insert e)
        | LetTuple(yts, z, e) -> LetTuple(yts, z, insert e)
        | e -> Let(xt, e, f e2) in
      insert (f e1)
  | LetRec({ name = xt; args = yts; body = e1 }, e2) ->
      LetRec({ name = xt; args = yts; body = f e1 }, f e2)
  | LetTuple(xts, y, e) -> LetTuple(xts, y, f e)
  | Loop(l, xts, ys, e) -> Loop(l, xts, ys, f e)
  | e -> e
