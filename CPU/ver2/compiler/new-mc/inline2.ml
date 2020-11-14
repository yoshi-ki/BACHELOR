open KNormal

let threshold = ref 0
let unlimited = ref true

let rec size = function
  | If(_, _, _, e1, e2) | Let(_, e1, e2) | LetRec({ body = e1 }, e2) ->
     1 + size e1 + size e2
  | LetTuple(_, _, e) -> 1 + size e
  | _ -> 1
   
let rec exists_call x = function
  | If(_,_,_,e1,e2) | Let(_,e1,e2) ->
     exists_call x e1 || exists_call x e2
  | LetRec({ name = (y,t); args = zts; body = e1 },e2) ->
     if exists_call x e2 then
       true
     else
       exists_call x e1 && exists_call y e2
  | App(y,_) -> x = y
  | LetTuple(_,_,e) -> exists_call x e
  | _ -> false
                     
(* check if a fundef is recursive *)
let rec is_recfun { name = (x,t); args = yts; body = e } =
  exists_call x e

let rec inline2 fnlist = function
  | If(cmp,x,y,e1,e2) -> If(cmp,x,y,inline2 fnlist e1,inline2 fnlist e2)
  | Let((x,t),e1,e2) -> Let((x,t),inline2 fnlist e1,inline2 fnlist e2)
  | LetRec(fd,e2) ->
     let (x,_) = fd.name in
     let fnlist =
       if not (is_recfun fd)
          && ((size fd.body) <= !threshold
              || !unlimited) then
         M.add x fd fnlist
       else
         fnlist in
     LetRec({ name = fd.name; args = fd.args; body = inline2 fnlist fd.body },
            inline2 fnlist e2)
  | App(x,ys) ->
     (try
        let { name = (x,t); args = yts; body = e } = M.find x fnlist in
        let e = Alpha.g (M.add_list2 (List.map fst yts) ys M.empty) e in
        e
      with
        Not_found -> App(x,ys))
  | LetTuple(xts,y,e) -> LetTuple(xts,y,inline2 fnlist e)
  | e -> e

let f e = inline2 M.empty e
