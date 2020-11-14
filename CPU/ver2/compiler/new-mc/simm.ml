open Asm

let rec g env = function (* 命令列の13bit即値最適化 (caml2html: simm13_g) *)
  | Ans(exp) -> Ans(g' env exp)
  | Let((x, t), Set(i), e) ->
      (* Format.eprintf "found simm13 %s = %d@." x i;  *)
     let e' = g (M.add x i env) e in
      if List.mem x (fv e') then Let((x, t), Set(i), e') else
      ((* Format.eprintf "erased redundant Set to %s@." x; *)
       e')
  | Let((x,t) as xt, SLLI(y, i), e) when M.mem y env -> (* for array access *)
     (* Format.eprintf "erased redundant SLL on %s: %d@." x (M.find y env);  *)
     g env (Let(xt, Set((M.find y env) lsl i), e))
  | Let((x,t) as xt, Add(y, z), e) when M.mem y env && M.mem z env -> (* for array access *)
     g env (Let(xt, Set((M.find y env) + (M.find z env)), e))
  | Let((x,t), Mov(y), e) when M.mem y env -> (* constant propagation *)
     let i = M.find y env in
     (* Format.eprintf "pefermed constant propagation %s -> %s: %d@." y x i; *)
     let e' = g (M.add x i env) e in
     if List.mem x (fv e') then Let((x, t), Set(i), e') else
       ((* Format.eprintf "erased redundant Set to %s@." x; *)
        e')
  | Let(xt, exp, e) -> Let(xt, g' env exp, g env e)
and g' env = function (* 各命令の13bit即値最適化 (caml2html: simm13_gprime) *)
  | Add(x, y) when M.mem y env ->
     (match M.find y env with
      | 0 -> Mov(x) | _ as i ->  AddI(x, i))
  | Add(x, y) when M.mem x env ->
     (match M.find x env with
      | 0 -> Mov(y) | _ as i ->  AddI(y, i))
  | Sub(x, y) when M.mem y env -> AddI(x, - (M.find y env))
  | SLL(x, y) when M.mem y env -> SLLI(x, M.find y env)
  | Ld(x, i) when M.mem x env -> Ld(reg_zero, (M.find x env) + i)
  | St(x, y, i) when M.mem y env -> St(x, reg_zero, (M.find y env) + i)
  | LdF(x, i) when M.mem x env -> LdF(reg_zero, (M.find x env) + i)
  | StF(x, y, i) when M.mem y env -> StF(x, reg_zero, (M.find y env) + i)
  | If(cmp, x, y, e1, e2) -> If(cmp, x, y, g env e1, g env e2)
  | e -> e

let h { name = l; args = xs; fargs = ys; body = e; ret = t } = (* トップレベル関数の13bit即値最適化 *)
  { name = l; args = xs; fargs = ys; body = g M.empty e; ret = t }

let f (Prog(mems, data, fundefs, e)) = (* プログラム全体の13bit即値最適化 *)
  try
  Format.eprintf "start Simm.f\n";
  Prog(mems, data, List.map h fundefs, g M.empty e)
  with Not_found -> assert false
