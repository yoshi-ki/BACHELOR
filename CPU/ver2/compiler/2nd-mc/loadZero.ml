open Asm
open Enums

let find x env = try M.find x env with Not_found -> x

let rec g env = function
  | Ans(exp) -> Ans(g' env exp)
  | Let((x, t), Set(i), e) when i = 0 ->
    let env' = M.add x "%r0" env in Let((x, t), Set(i), g env' e)
  | Let((x, t), exp, e) ->
    Let((x, t), g' env exp, g env e)

and g' env = function
  | Mov(x) -> Mov(find x env)
  | Neg(x) -> Neg(find x env)
  | Out(x) -> Out(find x env)
  | AddI(x, i) -> AddI(find x env, i)
  | Add(x, y) -> Add(find x env, find y env)
  | Sub(x, y) -> Sub(find x env, find y env)
  | Mul(x, y) -> Mul(find x env, find y env)
  | Div(x, y) -> Div(find x env, find y env)
  | SRL(x, y) -> SRL(find x env, find y env)
  | SLL(x, y) -> SLL(find x env, find y env)
  | SRLI(x, i) -> SRLI(find x env, i)
  | Ld(x, i) -> Ld(find x env, i)
  | St(x, y, i) -> St(find x env, find y env, i)
  | LdF(x, i) -> LdF(find x env, i)
  | StF(x, y, i) -> StF(x, find y env, i)
  | If(cmp, x, y, e1, e2) -> 
    If(cmp, find x env, find y env, g env e1, g env e2)
  | FIf(cmp, x, y, e1, e2) ->
    FIf(cmp, x, y, g env e1, g env e2)
  | Loop(l, xts, ys, e) -> Loop(l, xts, ys, g env e)
  | Jump(xyts, l) -> Jump(List.map (fun (x, y, t) -> (x, find y env, t)) xyts, l)
  | CallCls(f, xs, ys) -> CallCls(f, List.map (fun x -> find x env) xs, ys)
  | CallDir(l, xs, ys) -> CallDir(l, List.map (fun x -> find x env) xs, ys)
  | e -> e

let h {name = l; args = xs; fargs = ys; body = e; ret = t} =
  { name = l; args = xs; fargs = ys; body = g M.empty e; ret = t }

let f (Prog(mems, data, fundefs, e)) =
  try
    Format.eprintf "start LoadZero.f\n";
    Prog(mems, data, List.map h fundefs, g M.empty e)
  with Not_found -> assert false
