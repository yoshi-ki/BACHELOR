(* translation into SPARC assembly with infinite number of virtual registers *)

open Asm

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

let rec g env = function (* 式の仮想マシンコード生成 (caml2html: virtual_g) *)
  | Closure.Unit -> Ans(Nop)
  | Closure.Int(i) ->
    if -1048576 <= i && i < 1048576 then Ans(Set(i))
    else
      let l =
        try
          (* すでに定数テーブルにあったら再利用 *)
          let (l, _) =
            List.find (fun (_, d) ->
                match d with
                  I(i') -> i = i'
                | _ -> false) !data in
          l
        with Not_found ->
          let l = Id.L(Id.genid "l") in
          data := (l, I(i)) :: !data;
          l in
      (* let x = Id.genid "l" in
       * Let((x, Type.Int), SetL(l), Ans(Ld(I, x, C(0)))) *)
      Ans(ILd(l))
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
    (* let x = Id.genid "l" in
     * Let((x, Type.Int), SetL(l), Ans(LdF(I, x, C(0)))) *)
    Ans(ILd(l))
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
      (match M.find x env with
      | Type.Bool | Type.Int -> Ans(If(cmp, x, y, g env e1, g env e2))
      | Type.Float -> Ans(FIf(cmp, x, y, g env e1, g env e2))
      | _ -> failwith "equality supported only for bool, int, and float")
  | Closure.Let((x, t1), e1, e2) ->
      let e1' = g env e1 in
      let e2' = g (M.add x t1 env) e2 in
      concat e1' (x, t1) e2'
  | Closure.Var(x) ->
      (match M.find x env with
      | Type.Unit -> Ans(Nop)
      | Type.Float -> Ans(FMov(x))
      | _ -> Ans(Mov(x)))
  | Closure.MakeCls((x, t), { Closure.entry = l; Closure.actual_fv = ys }, e2) -> (* クロージャの生成 (caml2html: virtual_makecls) *)
     Printf.printf "---- creating closure : %s ----\n" (let L(x) = l in x);
      (* Closureのアドレスをセットしてから、自由変数の値をストア *)
      let e2' = g (M.add x t env) e2 in
      let offset, store_fv =
        expand
          (List.map (fun y -> (y, M.find y env)) ys)
          (4, e2')
          (fun y offset store_fv -> seq(StF(y, x, C(offset)), store_fv))
          (fun y _ offset store_fv -> seq(St(y, x, C(offset)), store_fv)) in
      Let((x, t), Mov(reg_hp),
          Let((reg_hp, Type.Int), AddI(reg_hp, align offset),
              let z = Id.genid "l" in
              Let((z, Type.Int), SetL(l),
                  seq(St(z, x, C(0)),
                      store_fv))))
  | Closure.AppCls(x, ys) ->
      let (int, float) = separate (List.map (fun y -> (y, M.find y env)) ys) in
      Ans(CallCls(x, int, float))
  | Closure.AppDir(Id.L(x), ys) ->
      let (int, float) = separate (List.map (fun y -> (y, M.find y env)) ys) in
      Ans(CallDir(Id.L(x), int, float))
  | Closure.Tuple(xs) -> (* 組の生成 (caml2html: virtual_tuple) *)
      let y = Id.genid "t" in
      let (offset, store) =
        expand
          (List.map (fun x -> (x, M.find x env)) xs)
          (0, Ans(Mov(y)))
          (fun x offset store -> seq(StF(x, y, C(offset)), store))
          (fun x _ offset store -> seq(St(x, y, C(offset)), store)) in
      Let((y, Type.Tuple(List.map (fun x -> M.find x env) xs)), Mov(reg_hp),
          Let((reg_hp, Type.Int), AddI(reg_hp, align offset),
              store))
  | Closure.LetTuple(xts, y, e2) ->
      let s = Closure.fv e2 in
      let (offset, load) =
        expand
          xts
          (0, g (M.add_list xts env) e2)
          (fun x offset load ->
            if not (S.mem x s) then load else (* [XX] a little ad hoc optimization *)
            fletd(x, LdF(y, C(offset)), load))
          (fun x t offset load ->
            if not (S.mem x s) then load else (* [XX] a little ad hoc optimization *)
            Let((x, t), Ld(y, C(offset)), load)) in
      load
  | Closure.Get(x, y) -> (* 配列の読み出し (caml2html: virtual_get) *)
      let offset = Id.genid "o" in
      (match M.find x env with
      | Type.Array(Type.Unit) -> Ans(Nop)
      | Type.Array(Type.Float) ->
          Let((offset, Type.Int), SLLI(y, 2),
              Ans(LdF(x, V(offset))))
      | Type.Array(_) ->
          Let((offset, Type.Int), SLLI(y, 2),
              Ans(Ld(x, V(offset))))
      | _ -> assert false)
  | Closure.Put(x, y, z) ->
      let offset = Id.genid "o" in
      (match M.find x env with
      | Type.Array(Type.Unit) -> Ans(Nop)
      | Type.Array(Type.Float) ->
          Let((offset, Type.Int), SLLI(y, 2),
              Ans(StF(z, x, V(offset))))
      | Type.Array(_) ->
          Let((offset, Type.Int), SLLI(y, 2),
              Ans(St(z, x, V(offset))))
      | _ -> assert false)
  | Closure.ExtArray(Id.L(x)) -> Ans(SetL(Id.L("min_caml_" ^ x)))

(* 関数の仮想マシンコード生成 (caml2html: virtual_h) *)
let h { Closure.name = (Id.L(x), t); Closure.args = yts; Closure.formal_fv = zts; Closure.body = e } =
  let (int, float) = separate yts in
  let (offset, load) =
    expand
      zts
      (4, g (M.add x t (M.add_list yts (M.add_list zts M.empty))) e)
      (fun z offset load -> fletd(z, LdF(x, C(offset)), load))
      (fun z t offset load -> Let((z, t), Ld(x, C(offset)), load)) in
  match t with
  | Type.Fun(_, t2) ->
      { name = Id.L(x); args = int; fargs = float; body = load; ret = t2 }
  | _ -> assert false

(* プログラム全体の仮想マシンコード生成 (caml2html: virtual_f) *)
let f (Closure.Prog(fundefs, e)) =
  data := [];
  let fundefs = List.map h fundefs in
  let e = g M.empty e in
  Prog(!data, fundefs, e)
