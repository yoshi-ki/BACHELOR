(* translation into SPARC assembly with infinite number of virtual registers *)

open Asm
(* open Mystub *)

let data = ref [] (* 浮動小数点数の定数テーブル (caml2html: virtual_data) *)

let classify xts ini addf addi =
  List.fold_left
    (fun acc (x, t) ->
      match t with
      | Type.Unit -> acc
      | Type.Float -> addf acc x
      | _ -> addi acc x t)
    ini
    xts

let separate xts =
  classify
    xts
    ([], [])
    (fun (int, float) x -> (int, float @ [x]))
    (fun (int, float) x _ -> (int @ [x], float))

let expand xts ini addf addi =
  classify
    xts
    ini
    (fun (offset, acc) x ->
      let offset = align offset in
      (offset + 4, addf x offset acc))
    (fun (offset, acc) x t ->
      (offset + 4, addi x t offset acc))

let g_const memtbl = function
  | Closure.Int(i) ->
     Ans(Set(i))
  | Closure.Float(f) ->
     let l =
       try
         (* すでに定数テーブルにあったら再利用 *)
         let (l, _) =
           List.find (fun (_, d) ->
               match d with
                 F (f') -> f = f'
               | _ -> false) !data in
         l
       with Not_found ->
         let l = Id.L(Id.genid "l") in
         data := (l, F(f)) :: !data;
         l in
     Ans(ILdF(l))
  | Closure.Ptr(l) ->
     Ans(Set(MemAlloc.lookup_addr memtbl l))
     

let rec g memtbl env = function (* 式の仮想マシンコード生成 (caml2html: virtual_g) *)
  | Closure.Unit -> Ans(Nop)
  | Closure.Const(cns) -> g_const memtbl cns
  | Closure.Neg(x) -> Ans(Neg(x))
  | Closure.Itof(x) -> Ans(Itof(x))
  | Closure.In(x) -> Ans(In(x))
  | Closure.Fin(x) -> Ans(Fin(x))
  | Closure.Out(x) -> Ans(Out(x))
  | Closure.Add(x,y) -> Ans(Add(x,y))
  | Closure.Sub(x,y) -> Ans(Sub(x,y))
  | Closure.Mul(x,y) -> Ans(Mul(x,y))
  | Closure.Div(x,y) -> Ans(Div(x,y))
  | Closure.FNeg(x) -> Ans(FNeg(x))
  | Closure.Ftoi(x) -> Ans(Ftoi(x))
  | Closure.FSqrt(x) -> Ans(FSqrt(x))
  | Closure.Floor(x) -> Ans(Floor(x))
  | Closure.FAdd(x, y) -> Ans(FAdd(x, y))
  | Closure.FSub(x, y) -> Ans(FSub(x, y))
  | Closure.FMul(x, y) -> Ans(FMul(x, y))
  | Closure.FDiv(x, y) -> Ans(FDiv(x, y))
  | Closure.If(cmp, x, y, e1, e2) ->
     (match try M.find x env with Not_found -> assert false with
      | Type.Bool | Type.Int -> Ans(If(cmp, x, y, g memtbl env e1, g memtbl env e2))
      | Type.Float -> Ans(FIf(cmp, x, y, g memtbl env e1, g memtbl env e2))
      | _ -> failwith "equality supported only for bool, int, and float")
  | Closure.Let((x, t1), e1, e2) ->
     let e1' = g memtbl env e1 in
     let e2' = g memtbl (M.add x t1 env) e2 in
     concat e1' (x, t1) e2'
  | Closure.Var(x) ->
     (match try M.find x env with Not_found -> assert false  with
      | Type.Unit -> Ans(Nop)
      | Type.Float -> Ans(FMov(x))
      | _ -> Ans(Mov(x)))
  | Closure.MakeCls((x, t), { Closure.entry = l; Closure.actual_fv = ys }, e2) -> (* クロージャの生成 (caml2html: virtual_makecls) *)
     Format.eprintf "Virtual.g : creating closure %s\n" (let L(x) = l in x);
     (* Closureのアドレスをセットしてから、自由変数の値をストア *)
     let e2' = g memtbl (M.add x t env) e2 in
     let offset, store_fv =
       expand
         (List.map (fun y -> (y, try M.find y env with Not_found -> assert false)) ys)
         (4, e2')
         (fun y offset store_fv -> seq(StF(y, x, offset), store_fv))
         (fun y _ offset store_fv -> seq(St(y, x, offset), store_fv)) in
     Let((x, t), Mov(reg_hp),
         Let((reg_hp, Type.Int), AddI(reg_hp, align offset),
             let z = Id.genid "l" in
             Let((z, Type.Int), SetL(l),
                 seq(St(z, x, 0),
                     store_fv))))
  | Closure.AppCls(x, ys) ->
     let (int, float) = separate (List.map (fun y -> (y, try M.find y env with Not_found -> assert false)) ys) in
     Ans(CallCls(x, int, float))
  | Closure.AppDir(Id.L(x), ys) ->
     let (int, float) = separate (List.map (fun y -> (y, try M.find y env with Not_found -> assert false)) ys) in
     Ans(CallDir(Id.L(x), int, float))
  | Closure.Tuple(xs) -> (* 組の生成 (caml2html: virtual_tuple) *)
     let y = Id.genid "t" in
     let (offset, store) =
       expand
         (List.map (fun x -> (x, try M.find x env with Not_found -> assert false)) xs)
         (0, Ans(Mov(y)))
         (fun x offset store -> seq(StF(x, y, offset), store))
         (fun x _ offset store -> seq(St(x, y, offset), store)) in
     Let((y, Type.Tuple(List.map (fun x -> try M.find x env with Not_found -> assert false) xs)), Mov(reg_hp),
         Let((reg_hp, Type.Int), AddI(reg_hp, align offset),
             store))
  | Closure.LetTuple(xts, y, e2) ->
     let s = Closure.fv e2 in
     let (offset, load) =
       expand
         xts
         (0, g memtbl (M.add_list xts env) e2)
         (fun x offset load ->
           if not (S.mem x s) then load else (* [XX] a little ad hoc optimization *)
             fletd(x, LdF(y, offset), load))
         (fun x t offset load ->
           if not (S.mem x s) then load else (* [XX] a little ad hoc optimization *)
             Let((x, t), Ld(y, offset), load)) in
     load
  | Closure.Get(x, y) -> (* 配列の読み出し (caml2html: virtual_get) *)
     let offset = Id.genid "o" in
     let abs = Id.genid "a" in
     (match try M.find x env with Not_found -> assert false with
      | Type.Array(Type.Unit) -> Ans(Nop)
      | Type.Array(Type.Float) ->
         Let((offset, Type.Int), SLLI(y, 2),
             Let((abs, Type.Int), Add(x, offset), 
                 Ans(LdF(abs, 0))))
      | Type.Array(_) ->
         Let((offset, Type.Int), SLLI(y, 2),
             Let((abs, Type.Int), Add(x, offset),
                 Ans(Ld(abs, 0))))
      | _ -> assert false)
  | Closure.GetL(l, y) -> (* 配列の読み出し (caml2html: virtual_get) *)
     let addr = MemAlloc.lookup_addr memtbl l in
     let base = Id.genid "b" in
     let offset = Id.genid "o" in
     let abs = Id.genid "a" in
     (match try MemAlloc.lookup_tp memtbl l with Not_found -> assert false with
      | Type.Array(Type.Unit) -> Ans(Nop)
      | Type.Array(Type.Float) ->
         Let((base, Type.Int), Set(addr),
             Let((offset, Type.Int), SLLI(y, 2),
                 Let((abs, Type.Int), Add(base, offset), 
                     Ans(LdF(abs, 0)))))
      | Type.Array(_) ->
         Let((base, Type.Int), Set(addr),
             Let((offset, Type.Int), SLLI(y, 2),
                 Let((abs, Type.Int), Add(base, offset),
                     Ans(Ld(abs, 0)))))
      | _ ->
         (* let Id.L(l) = l in
          * Printf.printf "Virtual.g : error : label %s is of type " l;
          * Type.print_type t; *)
         assert false)
  | Closure.Put(x, y, z) ->
     let offset = Id.genid "o" in
     let abs = Id.genid "a" in
     (match try M.find x env with Not_found -> assert false with
      | Type.Array(Type.Unit) -> Ans(Nop)
      | Type.Array(Type.Float) ->
         Let((offset, Type.Int), SLLI(y, 2),
             Let((abs, Type.Int), Add(x, offset),
                 Ans(StF(z, abs, 0))))
      | Type.Array(_) ->
         Let((offset, Type.Int), SLLI(y, 2),
             Let((abs, Type.Int), Add(x, offset),
                 Ans(St(z, abs, 0))))
      | _ -> assert false)
  | Closure.PutL(l, y, z) ->
     let addr = MemAlloc.lookup_addr memtbl l in
     let base = Id.genid "b" in
     let offset = Id.genid "o" in
     let abs = Id.genid "a" in
     (match try MemAlloc.lookup_tp memtbl l with Not_found -> assert false with
      | Type.Array(Type.Unit) -> Ans(Nop)
      | Type.Array(Type.Float) ->
         Let((base, Type.Int), Set(addr),
             Let((offset, Type.Int), SLLI(y, 2),
                 Let((abs, Type.Int), Add(base, offset),
                     Ans(StF(z, abs, 0)))))
      | Type.Array(_) ->
         Let((base, Type.Int), Set(addr),
             Let((offset, Type.Int), SLLI(y, 2),
                 Let((abs, Type.Int), Add(base, offset),
                     Ans(St(z, abs, 0)))))
      | _ -> assert false)
  | Closure.ExtArray(Id.L(x)) -> Ans(SetL(Id.L("min_caml_" ^ x)))

(* 関数の仮想マシンコード生成 (caml2html: virtual_h) *)
let h memtbl
      { Closure.name = (Id.L(x), t); Closure.args = yts; Closure.formal_fv = zts; Closure.body = e } =
  let (int, float) = separate yts in
  let (offset, load) =
    expand
      zts
      (4, g memtbl (M.add x t (M.add_list yts (M.add_list zts M.empty))) e)
      (fun z offset load -> fletd(z, LdF(x, offset), load))
      (fun z t offset load -> Let((z, t), Ld(x, offset), load)) in
  match t with
  | Type.Fun(_, t2) ->
      { name = Id.L(x); args = int; fargs = float; body = load; ret = t2 }
  | _ -> assert false

(* プログラム全体の仮想マシンコード生成 (caml2html: virtual_f) *)
let f memtbl mems (Closure.Prog(fundefs, e)) =
  try
  Format.eprintf "start Virtual.f@.";
  data := [];
  let fundefs = List.map (h memtbl) fundefs in
  let e = g memtbl M.empty e in
  Prog(mems, !data, fundefs, e)
  with Not_found -> assert false
