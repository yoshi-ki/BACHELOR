open Asm2

let rec g env = function (* 命令列の13bit即値最適化 (caml2html: simm13_g) *)
  | Ans(exp) -> Ans(g' env exp)
  | Let((x, t), Set(i), e) when -4096 <= i && i < 4096 ->
      (* Format.eprintf "found simm13 %s = %d@." x i;  *)
     let e' = g (M.add x i env) e in
      if List.mem x (fv e') then Let((x, t), Set(i), e') else
      ((* Format.eprintf "erased redundant Set to %s@." x; *)
       e')
  | Let((x,t) as xt, SLLI(y, i), e) when M.mem y env -> (* for array access *)
     (* Format.eprintf "erased redundant SLL on %s: %d@." x (M.find y env);  *)
     g env (Let(xt, Set((M.find y env) lsl i), e))
  | Let((x,t), Mov(y), e) when M.mem y env -> (* constant propagation *)
     let i = M.find y env in
     (* Format.eprintf "pefermed constant propagation %s -> %s: %d@." y x i; *)
     let e' = g (M.add x i env) e in
     if List.mem x (fv e') then Let((x, t), Set(i), e') else
       ((* Format.eprintf "erased redundant Set to %s@." x; *)
        e')
  | Let(xt, exp, e) -> Let(xt, g' env exp, g env e)
and g' env = function (* 各命令の13bit即値最適化 (caml2html: simm13_gprime) *)
  | Add(x, y) when M.mem y env -> AddI(x, M.find y env)
  | Add(x, y) when M.mem x env -> AddI(y, M.find x env)
  | SLL(x, y) when M.mem y env -> SLLI(x, M.find y env)
  | Ld(x, V(y)) when M.mem y env -> Ld(x, C(M.find y env))
  | St(x, y, V(z)) when M.mem z env -> St(x, y, C(M.find z env))
  | LdF(x, V(y)) when M.mem y env -> LdF(x, C(M.find y env))
  | StF(x, y, V(z)) when M.mem z env -> StF(x, y, C(M.find z env))
  | If(cmp, x, y, e1, e2) -> If(cmp, x, y, g env e1, g env e2)
  | Loop(l, xts, ys, e) -> Loop(l, xts, ys, g env e)
  | e -> e

let h { name = l; args = xs; fargs = ys; body = e; ret = t } = (* トップレベル関数の13bit即値最適化 *)
  { name = l; args = xs; fargs = ys; body = g M.empty e; ret = t }

let f (Prog(data, fundefs, e)) = (* プログラム全体の13bit即値最適化 *)
  Prog(data, List.map h fundefs, g M.empty e)
