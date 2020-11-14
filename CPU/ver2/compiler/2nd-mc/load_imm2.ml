open Asm
open Cfg
open MemAlloc
type num_t = Int of int | Float of float

let data = ref []

let imm_max = 0x8000


let inside_range i = (- imm_max) <= i && i < imm_max


let search_data : num_t -> Id.l =
  fun num ->
  match num with
  | Int(i) ->
     let l, _ =
       List.find (fun (_, d) ->
           match d with
           | Asm.I(i') -> i = i'
           | _ -> false) !data in
     l
  | Float(f) ->
     let l, _ = List.find (fun (_, d) ->
                    match d with
                    | Asm.F(f') -> f = f'
                    | _ -> false) !data in
     l
     

let routine_for_instr { instr_id = iid; op = op } =
  let tmpt = (reg_tmp, Type.Int) in
  let tmp = reg_tmp in
  let tag_iid =
    List.map (fun op -> { instr_id = iid; op = op }) in
  match op with
  | Set(xt, i) ->
     if inside_range i then
       tag_iid [Set(xt, i)]
     else
       let l = try search_data (Int(i))
               with Not_found ->
                 let l = Id.genlab "l" in
                 data := (l, Asm.I(i)) :: !data;
                 l in
       tag_iid [ILd(xt, l)]
  | SetF(xt, f) ->
     let l = try search_data (Float(f))
             with Not_found ->
               let l = Id.genlab "l" in
               data := (l, Asm.F(f)) :: !data;
               l in
    tag_iid [ILd(xt, l)]
  | AddI(xt, y, i) ->
     if inside_range i then
      tag_iid [AddI(xt, y, i)]
     else
       let l = try search_data (Int(i))
               with Not_found ->
                 let l = Id.genlab "l" in
                 data := (l, Asm.I(i)) :: !data;
                 l in
      tag_iid [ILd(tmpt, l); Add(xt, y, tmp)]
  | SLLI(xt, y, i) ->
     if inside_range i then
      tag_iid [SLLI(xt, y, i)]
     else
       let l = try search_data (Int(i)) 
               with Not_found ->
                 let l = Id.genlab "l" in
                 data := (l, Asm.I(i)) :: !data;
                 l in
       tag_iid [ILd(tmpt, l); SLL(xt, y, tmp)]
  | SRLI(xt, y, i) ->
    if inside_range i then
      tag_iid [SRLI(xt, y, i)]
    else
      assert false
      (* let l = try search_data (Int(i)) 
       *   with Not_found ->
       *     let l = Id.genlab "l" in
       *     data := (l, Asm.I(i)) :: !data;
       *     l in
       * tag_iid [ILd(tmpt, l); SRL(xt, y, tmp)] *)
  | Ld(xt, y, i) ->
     if inside_range i then
     tag_iid [Ld(xt, y, i)]
     else
       let l = try search_data (Int(i))
               with Not_found ->
                 let l = Id.genlab "l" in
                 data := (l, Asm.I(i)) :: !data;
                 l in
       tag_iid [ILd(tmpt, l); Add(tmpt, y, tmp); Ld(xt, tmp, 0)]
  | St(x, y, i) ->
     if inside_range i then
       tag_iid [St(x, y, i)]
     else
       let l = try search_data (Int(i))
               with Not_found ->
                 let l = Id.genlab "l" in
                 data := (l, Asm.I(i)) :: !data;
                 l in
       tag_iid [ILd(tmpt, l); Add(tmpt, y, tmp); St(x, tmp, 0)]
  | LdF(xt, y, i) ->
     if inside_range i then
       tag_iid [LdF(xt, y, i)]
     else
       let l = try search_data (Int(i))
               with Not_found ->
                 let l = Id.genlab "l" in
                 data := (l, Asm.I(i)) :: !data;
                 l in
       tag_iid [ILd(tmpt, l); Add(tmpt, y, tmp); LdF(xt, tmp, 0)]
  | StF(x, y, i) ->
     if inside_range i then
       tag_iid [StF(x, y, i)]
     else
       let l = try search_data (Int(i))
               with Not_found ->
                 let l = Id.genlab "l" in
                 data := (l, Asm.I(i)) :: !data;
                 l in
       tag_iid [ILd(tmpt, l); Add(tmpt, y, tmp); StF(x, tmp, 0)]
  | others -> tag_iid [others]


let routine_for_block block =
  let code = List.concat
               (List.map routine_for_instr block.code) in
  block.code <- code


let g_for_cfg =
  List.iter routine_for_block
            

let routine_for_memAlloc = function
  | MemAlloc.I(i) ->
     if inside_range i then
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
  | others -> others (* もともとILの場合はない *)


let g_for_memAlloc =
  List.map
    (function
     | MemAlloc.A(l, n, cns) ->
        MemAlloc.A(l, n, routine_for_memAlloc cns)
     | MemAlloc.T(l, cnss) ->
        MemAlloc.T(l, List.map routine_for_memAlloc cnss))


let f (Prog(mems, data', fn_cfgs, cfg)) =
  data := data';
  let mems' = g_for_memAlloc mems in
  List.iter g_for_cfg fn_cfgs;
  g_for_cfg cfg;
  Prog(mems', !data, fn_cfgs, cfg)
