open KNormal

let threshold = ref 0
let unlimited = ref true

let rec size = function
  | If(_, _, _, e1, e2) | Let(_, e1, e2) | LetRec({ body = e1 }, e2) ->
     1 + size e1 + size e2
  | LetTuple(_, _, e) -> 1 + size e
  | Loop(_, _, _, e) -> 1 + size e
  | _ -> 1
   
let rec exists_call x = function
  | If(_, _, _, e1, e2) | Let(_, e1, e2) ->
     exists_call x e1 || exists_call x e2
  | LetRec({ name = (y, t); args = zts; body = e1 }, e2) ->
     if exists_call x e2 then
       true
     else
       exists_call x e1 && exists_call y e2
  | App(y, _) -> x = y
  | LetTuple(_, _, e) -> exists_call x e
  | _ -> false
                     
(* check if a fundef is recursive *)
let rec is_recfun { name = (x, t); args = yts; body = e } =
  exists_call x e

let rec inline2 env = function
  | If(cmp, x, y, e1, e2) -> If(cmp, x, y, inline2 env e1, inline2 env e2)
  | Let((x, t), e1, e2) -> Let((x, t), inline2 env e1, inline2 env e2)
  | LetRec({ name = (x, t); args = yts; body = e1 }, e2) ->
     let env =
       if not (exists_call x e1) (* i.e. the e1 does not contain recursive call *)
          && ((size e1) <= !threshold || !unlimited) then
         M.add x (yts, e1) env
       else
         env in
     LetRec({ name = (x, t); args = yts; body = inline2 env e1 }, inline2 env e2)
  | App(x,ys) when M.mem x env ->
     let (zts, e) = M.find x env in
     Format.eprintf "inlining %s@." x;
     let env' =
       List.fold_left2
         (fun env' (z, _) y -> M.add z y env')
         M.empty
         zts
         ys in
     Alpha.g env' e
  | LetTuple(xts,y,e) -> LetTuple(xts,y,inline2 env e)
  | Loop(l, xts, ys, e) -> Loop(l, xts, ys, inline2 env e)
  | e -> e

let f e = inline2 M.empty e
