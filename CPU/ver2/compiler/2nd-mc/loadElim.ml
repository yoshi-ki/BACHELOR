open Asm
open Enums
(* より外側のスコープの定数を使うようにコードを変換 *)

let find x env = try M.find x env with Not_found -> x

let rec g ivals fvals env = function
  | Ans(exp) -> Ans(g' ivals fvals env exp)
  | Let((x, t), Set(i), e) when List.mem_assoc i ivals ->
     let e' = g ivals fvals (M.add x (List.assoc i ivals) env) e in
     if List.mem x (fv e') then Let((x, t), Set(i), e') else e'
  | Let((x, t), Set(i), e) ->
     let e' = g ((i, x) :: ivals) fvals env e in
     Let((x, t), Set(i), e')
  | Let((x, t), SetF(d), e) when List.mem_assoc d fvals ->
     let e' = g ivals fvals (M.add x (List.assoc d fvals) env) e in
     if List.mem x (fv e') then Let((x, t), SetF(d), e') else e'
  | Let((x, t), SetF(d), e) ->
     let e' = g ivals ((d, x) :: fvals) env e in
     Let((x, t), SetF(d), e')
  | Let(xt, exp, e) -> Let(xt, g' ivals fvals env exp, g ivals fvals env e)

and g' ivals fvals env = function
  | Mov(x) -> Mov(find x env)
  | Neg(x) -> Neg(find x env)
  | Itof(x) -> Itof(find x env)
  | AddI(x, i) -> AddI(find x env, i)
  | Add(x, y) -> Add(find x env, find y env)
  | Sub(x, y) -> Sub(find x env, find y env)
  | Mul(x, y) -> Mul(find x env, find y env)
  | Div(x, y) -> Div(find x env, find y env)
  | SLL(x, y) -> SLL(find x env, find y env)
  | SLLI(x, i) -> SLLI(find x env, i)
  | FMov(x) -> FMov(find x env)
  | Ftoi(x) -> Ftoi(find x env)
  | FNeg(x) -> FNeg(find x env)
  | Floor(x) -> Floor(find x env)
  | FSqrt(x) -> FSqrt(find x env)
  | FAdd(x, y) -> FAdd(find x env, find y env)
  | FSub(x, y) -> FSub(find x env, find y env)
  | FMul(x, y) -> FMul(find x env, find y env)
  | FDiv(x, y) -> FDiv(find x env, find y env)
  | If(cmp, x, y, e1, e2) -> 
     If(cmp, find x env, find y env, g ivals fvals env e1, g ivals fvals env e2)
  | FIf(cmp, x, y, e1, e2) ->
     FIf(cmp, find x env, find y env, g ivals fvals env e1, g ivals fvals env e2)
  | Loop(l, xts, ys, e) -> 
     Loop(l, xts, List.map (fun y -> find y env) ys, g ivals fvals env e)
  | e -> e

let h { name = l; args = xs; fargs = ys; body = e; ret = t } =
  { name = l; args = xs; fargs = ys; body = g [] [] M.empty e; ret = t }

let f (Prog(mems, data, fundefs, e)) =
  try
    Format.eprintf "start LoadElim.f\n";
    Prog(mems, data, List.map h fundefs, g [] [] M.empty e)
  with Not_found -> assert false
