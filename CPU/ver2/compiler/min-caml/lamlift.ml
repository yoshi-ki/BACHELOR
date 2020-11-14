(* 自身を値として用いるわけではないが自由変数を含む関数から自由変数を除去する *)
(* bind/bound variables are assumed to be properly alpha converted *)
open KNormal
let argsize_max = ref 8
   
let rec fv = function
  | Unit | Int(_) | Float(_) | ExtArray(_) -> S.empty
  | Neg(x) | Itof(x) | In(x) | Fin(x) | Out(x) |
      FNeg(x) | FSqrt(x) | Ftoi(x) | Floor(x) -> S.singleton x
  | Add(x,y) | Sub(x,y) | Mul(x,y) | Div(x,y)
    | FAdd(x,y) | FSub(x,y) | FMul(x,y) | FDiv(x,y)
    | Get(x,y) -> S.of_list [x;y]
  | If (_,x,y,e1,e2) -> S.add x (S.add y (S.union (fv e1) (fv e2)))
  | Let((x,t),e1,e2) -> S.union (fv e1) (S.remove x (fv e2))
  | Var(x) -> S.singleton x
  | LetRec({ name = (x,t); args = yts; body = e1 }, e2) ->
     let zs = S.diff (fv e1) (S.of_list (List.map fst yts)) in
     S.diff (S.union zs (fv e2)) (S.singleton x)
     (* 呼び出しは自由変数としてカウントしない *)
  | App(_, ys) -> S.of_list ys
  | Tuple(xs) | ExtFunApp(_,xs) -> S.of_list xs
  | Put(x,y,z) -> S.of_list [x;y;z]
  | LetTuple(xs,y,e) -> S.add y (S.diff (fv e) (S.of_list (List.map fst xs)))

let rec lamlift fn zs = function
  | If(cmp,x,y,e1,e2) -> If(cmp,x,y, lamlift fn zs e1, lamlift fn zs e2)
  (* x is assumed to be != fn *)
  | Let(xt,e1,e2) -> Let(xt, lamlift fn zs e1, lamlift fn zs e2)
  | LetRec({ name = xt; args = yts; body = e1 }, e2) ->
     let e1' = lamlift fn zs e1 in
     let e2' = lamlift fn zs e2 in
     LetRec({ name = xt; args = yts; body = e1' }, e2')
     (* add new variable corresponding to the free variables in fn *)
  | App(x,ys) when x = fn -> App(x, zs @ ys)
  | LetTuple(xts,y,e) -> LetTuple(xts,y, lamlift fn zs e)
  | e -> e
     
                      
let rec g env = function
  | If(cmp,x,y,e1,e2) -> If(cmp,x,y, g env e1, g env e2)
  | Let((x,t),e1,e2) ->
     let e1' = g env e1 in
     let e2' = g (M.add x t env) e2 in
     Let ((x,t),e1',e2')
  | LetRec({ name = (x,t); args = yts; body = e1 },e2) ->
     let zs1 = S.diff (fv e1) (S.of_list (List.map fst yts)) in
     let zs2 = fv e2 in
     if (S.mem x zs1 || S.mem x zs2 || ((List.length yts) + S.cardinal zs1) > !argsize_max) then
       let e1' = g (M.add_list ((x,t)::yts) env) e1 in
       let e2' = g (M.add x t env) e2 in
       LetRec({ name = (x,t); args = yts; body = e1' }, e2')
     else
       let zs = S.elements zs1 in
       let zts = List.map (fun z -> (z, M.find z env)) zs in
       let yts' = zts @ yts in
       let t' =
         (match t with
          | Type.Fun(ss, s) -> Type.Fun((List.map snd zts) @ ss, s)
          | _ -> failwith "in Lamlift.f: non functional type with LetRec") in
       let e1' = g (M.add_list ((x,t')::yts') env) (lamlift x zs e1) in
       let e2' = g (M.add x t' env) (lamlift x zs e2) in
       LetRec({ name = (x,t'); args = yts'; body = e1' }, e2')
  | LetTuple(xts,y,e) ->
     LetTuple(xts,y, g (M.add_list xts env) e)
  | e -> e

let f e = g M.empty e
