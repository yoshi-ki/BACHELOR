open Syntax

exception Unbound

type env = (name * value) list

let empty_env = []
let extend x v env = (x, v) :: env

let rec lookup x env =
  try List.assoc x env with Not_found -> raise Unbound

exception EvalErr

let rec eval_expr env e =
  match e with
  | EConstInt i ->
    VInt i
  | EConstBool b ->
    VBool b
  | EVar x ->
    (try
       lookup x env
     with
     | Unbound -> raise EvalErr)
  | EAdd (e1,e2) ->
    let v1 = eval_expr env e1 in
    let v2 = eval_expr env e2 in
    (match v1, v2 with
     | VInt i1, VInt i2 -> VInt (i1 + i2)
     | _ -> raise EvalErr)
  | ESub (e1,e2) ->
  	let v1 = eval_expr env e1 in
	let v2 = eval_expr env e2 in
	(match v1, v2 with
	 | VInt i1, VInt i2 -> VInt (i1 - i2)
	 | _ -> raise EvalErr)
  | EMul (e1,e2) ->
    let v1 = eval_expr env e1 in
    let v2 = eval_expr env e2 in
    (match v1, v2 with
     | VInt i1, VInt i2 -> VInt (i1 * i2)
     | _ -> raise EvalErr)
  | EDiv (e1,e2) ->
    let v1 = eval_expr env e1 in
    let v2 = eval_expr env e2 in
    (match v1, v2 with
     | VInt i1, VInt i2 -> VInt (i1 / i2)
     | _ -> raise EvalErr)
  | EEq (e1,e2) ->
    let v1 = eval_expr env e1 in
    let v2 = eval_expr env e2 in
    (match v1, v2 with
     | VInt i1,  VInt i2  -> VBool (i1 = i2)
     | _ -> raise EvalErr)
  | ELt (e1,e2) ->
    let v1 = eval_expr env e1 in
    let v2 = eval_expr env e2 in
    (match v1, v2 with
     | VInt i1,  VInt i2  -> VBool (i1 < i2)
     | _ -> raise EvalErr)
  | EIf (e1,e2,e3) ->
    let v1 = eval_expr env e1 in
    (match v1 with
     | VBool b ->
       if b then eval_expr env e2 else eval_expr env e3
     | _ -> raise EvalErr)
  | ELet (e1,e2,e3) -> 
  	eval_expr (extend e1 (eval_expr env e2) env) e3
  | EFun (x, e) ->
	VFun (x, e, ref env) 
  | EApp (e1, e2) ->
	let VFun (x,e,oenv) = eval_expr env e1 in
	let v2 = eval_expr env e2 in
		eval_expr (extend x v2 (!oenv)) e
  | ELetRec (l, e) ->
    let oenv = ref [] in
	let rec update lis envi= 
	(match lis with
	| (fi,xi,ei) :: rest ->
        let vi = VFun (xi, ei, oenv) in
        oenv := extend fi vi envi;
		update rest (!oenv)
	| [] -> !oenv)
	in
	eval_expr (update l env) e

let rec eval_command env c =
  match c with
  | CExp e -> ("-", env, eval_expr env e)
  | CDecl (e1,e2) -> (e1, (extend e1 (eval_expr env e2) env), eval_expr env e2)
  | CRecDecl (l) ->
  	let oenv = ref [] in
	let rec update lis envi =
    (match lis with
    | (fi,xi,ei) :: rest ->
        let vi = VFun (xi, ei, oenv) in
        oenv := extend fi vi envi;
        update rest (!oenv)
    | [] -> !oenv)
    in ("-", (update l env), VOut) 

 


