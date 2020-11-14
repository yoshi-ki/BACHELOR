(* addiでロードできない整数値をilwを用いたロード方式に変更する *)
(* addiのimm operandは符号付き16bit *)
(* 従って，-0x8000 ~ 0x7fffまでの整数値が直接ロードできる *)
open Asm
open MemAlloc
type num_t = Int of int | Float of float

let data = ref []

let imm_max = 0x8000


let inside_range i = (- imm_max) <= i && i < imm_max


let search_data num = (* 見つからなければNot_found例外が出るので外側でキャッチする *)
  match num with
  | Int(i) ->
     let l, _ =
       List.find (fun (_, d) ->
           match d with
           | Asm.I(i') -> i = i'
           | _ -> false) !data in
     l
  | Float(f) ->
     let l, _ =
       List.find (fun (_, d) ->
           match d with
           | Asm.F(f') -> f = f'
           | _ -> false) !data in
     l

let routine_for_asm = function
  | Set(i) ->
     if inside_range i then
       Ans(Set(i))
     else
       let l = try search_data (Int(i))
         with Not_found ->
           let l = Id.genlab "l" in
           data := (l, Asm.I(i)) :: !data;
           l in
       Ans(ILd(l))
  | AddI(x, i) ->
     if inside_range i then
       Ans(AddI(x, i))
     else
       let l = try search_data (Int(i))
               with Not_found ->
                     let l = Id.genlab "l" in
                     data := (l, Asm.I(i)) :: !data;
                     l in
       Let((reg_sub1, Type.Int), ILd(l),
           Ans(Add(x, reg_sub1)))
  | SLLI(x, i) ->
     if inside_range i then
       Ans(SLLI(x, i))
     else
       let l = try search_data (Int(i)) 
               with Not_found ->
                     let l = Id.genlab "l" in
                     data := (l, Asm.I(i)) :: !data;
                     l in
       Let((reg_sub1, Type.Int), ILd(l),
           Ans(SLL(x, reg_sub1)))
  | SRLI(x, i) ->
    if inside_range i then
      Ans(SRLI(x, i))
    else
      let l = try search_data (Int(i)) 
        with Not_found ->
          let l = Id.genlab "l" in
          data := (l, Asm.I(i)) :: !data;
          l in
      Let((reg_sub1, Type.Int), ILd(l),
          Ans(SRL(x, reg_sub1)))
  | Ld(x, i) ->
     if inside_range i then
       Ans(Ld(x, i))
     else
       let l = try search_data (Int(i))
               with Not_found ->
                     let l = Id.genlab "l" in
                     data := (l, Asm.I(i)) :: !data;
                     l in
       Let((reg_sub1, Type.Int), ILd(l),
           Let((reg_sub1, Type.Int), Add(x, reg_sub1),
               Ans(Ld(reg_sub1, 0))))
  | St(x, y, i) ->
     if inside_range i then
       Ans(St(x, y, i))
     else
       let l = try search_data (Int(i))
               with Not_found ->
                 let l = Id.genlab "l" in
                 data := (l, Asm.I(i)) :: !data;
                 l in
       Let((reg_sub1, Type.Int), ILd(l),
           Let((reg_sub1, Type.Int), Add(y, reg_sub1),
               Ans(St(x, reg_sub1, 0))))
  | LdF(x, i) ->
     if inside_range i then
       Ans(LdF(x, i))
     else
       let l = try search_data (Int(i))
               with Not_found ->
                 let l = Id.genlab "l" in
                 data := (l, Asm.I(i)) :: !data;
                 l in
       Let((reg_sub1, Type.Int), ILd(l),
           Let((reg_sub1, Type.Int), Add(x, reg_sub1),
               Ans(LdF(reg_sub1, 0))))
  | StF(x, y, i) ->
     if inside_range i then
       Ans(StF(x, y, i))
     else
       let l = try search_data (Int(i))
               with Not_found ->
                 let l = Id.genlab "l" in
                 data := (l, Asm.I(i)) :: !data;
                 l in
       Let((reg_sub1, Type.Int), ILd(l),
           Let((reg_sub1, Type.Int), Add(y, reg_sub1),
               Ans(StF(x, reg_sub1, 0))))
  | others -> Ans(others)


let routine_for_memAlloc = function
  | MemAlloc.I(i) ->
     if (- imm_max) <= i && i < imm_max then
       MemAlloc.I(i)
     else
       let Id.L(l) = try search_data (Int(i))
                     with Not_found ->
                       let l = Id.genlab "l" in
                       data := (l, Asm.I(i)) :: !data;
                       l in
       MemAlloc.IL(l)
  | MemAlloc.F(f) ->
     let Id.L(l) = try search_data (Float(f))
                   with Not_found ->
                     let l = Id.genlab "l" in
                     data := (l, Asm.F(f)) :: !data;
                     l in
     MemAlloc.FL(l)
  | others -> others (* assert falseでもいいけど... *)


let rec g_for_asm = function
  | Ans(exp) -> routine_for_asm exp
  | Let(xt, exp, e) -> concat (routine_for_asm exp) xt (g_for_asm e)


let h_for_asm { Asm.name = l; Asm.args = xs;
                Asm.fargs = ys; Asm.body = e; Asm.ret = t } =
  { Asm.name = l; Asm.args = xs;
    Asm.fargs = ys; Asm.body = g_for_asm e; Asm.ret = t }


let rec g_for_memAlloc =
  List.map
    (function
     | MemAlloc.A(l, n, cns) ->
        MemAlloc.A(l, n, routine_for_memAlloc cns)
     | MemAlloc.T(l, cnss) ->
        MemAlloc.T(l, List.map routine_for_memAlloc cnss))


let f (Asm.Prog(mems, data', fundefs, e)) =
  data := data';
  let mems' = g_for_memAlloc mems in
  let fundefs' = List.map h_for_asm fundefs in
  let e' = g_for_asm e in
  Asm.Prog(mems', !data, fundefs', e')
