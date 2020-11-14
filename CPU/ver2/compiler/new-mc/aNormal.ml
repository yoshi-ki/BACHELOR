open KNormal

(* a_normal returns the base term of the input and
 * the list of definitions before it
 * in deflist, the outermost definition is in the tail *)
let rec a_normal = function
  | If(cmp,x,y,e1,e2) ->
     let e1, dflist1 = a_normal e1 in
     let e2, dflist2 = a_normal e2 in
     let e1' = List.fold_left
                 (fun n ((x,t),m) -> Let((x,t),m,n)) e1 dflist1 in
     let e2' = List.fold_left
                 (fun n ((x,t),m) -> Let((x,t),m,n)) e2 dflist2 in
     If(cmp,x,y,e1',e2'), []
  | Let((x,t),e1,e2) ->
     let e1', dflist1 = a_normal e1 in
     let e2', dflist2 = a_normal e2 in
     e2', (dflist2 @ (((x,t),e1')::dflist1))
  | LetRec({ name = (x,t); args = yts; body = e1 },e2) ->
     let e1, dflist1 = a_normal e1 in
     let e2, dflist2 = a_normal e2 in
     let e1' = List.fold_left
                 (fun n ((x,t),m) -> Let((x,t),m,n)) e1 dflist1 in
     let e2' = List.fold_left
                 (fun n ((x,t),m) -> Let((x,t),m,n)) e2 dflist2 in
     LetRec({ name = (x,t); args = yts; body = e1' },e2'), []
  | LetTuple(xts,y,e) ->
     let e, dflist = a_normal e in
     let e' = List.fold_left
                (fun n ((x,t),m) -> Let((x,t),m,n)) e dflist in
     LetTuple(xts,y,e'), []
  | e -> e, []


let f e =
  let e, dflist = a_normal e in
  List.fold_left
    (fun n ((x,t),m) -> Let((x,t),m,n)) e dflist 
