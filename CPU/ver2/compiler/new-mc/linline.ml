open LNormal

let rec exists_call x = function
  | If(_,_,_,e1,e2) | Let(_,e1,e2)
    | LetRec({ name = _; args = _; body = e1 },e2) ->
     exists_call x e1 || exists_call x e2
  | App(y,_) -> x = y
  | LetTuple(_,_,e) -> exists_call x e
  | _ -> false (* ループ中に関数呼び出しはない *)

(* check if a fundef is recursive *)
let rec is_recfun { name = (x,t); args = yts; body = e } =
  exists_call x e

let rec linline fnlist = function
  | If(cmp,x,y,e1,e2) -> If(cmp,x,y,linline fnlist e1,linline fnlist e2)
  | Let((x,t),e1,e2) -> Let((x,t),linline fnlist e1,linline fnlist e2)
  | LetRec(fd,e2) ->
     let (x,_) = fd.name in
     let fnlist =
       if not (is_recfun fd) then
         M.add x fd fnlist
       else
         fnlist in
     LetRec({ name = fd.name; args = fd.args; body = linline fnlist fd.body },
            linline fnlist e2)
  | App(x,ys) ->
     (try
        let { name = (x,t); args = yts; body = e } = M.find x fnlist in
        let e = LNormal.subst (M.add_list2 (List.map fst yts) ys M.empty) M.empty e in
        e
      with
        Not_found -> App(x,ys))
  | LetTuple(xts,y,e) -> LetTuple(xts,y,linline fnlist e)
  | e -> e

let f e = linline M.empty e
