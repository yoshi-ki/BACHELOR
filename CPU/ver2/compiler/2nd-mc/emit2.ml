open Asm
open Enums
open RegAlloc2
open Cfg
open EmitAux

external get : float -> int32 = "get"


let output_save_op_restore oc regtbl oper defs uses =
  let dregmap, uregmap, dspls, uspls = get_reg regtbl defs uses in
  insert_restore oc uregmap uspls;
  output_simple_op oc dregmap uregmap oper;
  insert_save oc dregmap dspls


let rec output_instr oc livenow_tbl regtbl instr =
  (* 末尾呼び出しがあったかどうかを呼び出しルーチンに伝えるためのbool値を返す *)
  let oper = instr.op in
  let out_sor = output_save_op_restore oc regtbl in
  match oper with
  | Phi _ -> false (* Phi関数は消す *)
  | Nop -> false
  | CallCls _ -> callcls_routine oc livenow_tbl regtbl instr
  | CallDir (_, Id.L(l), _, _) when l = "min_caml_create_array" ->
     let is_float = false in
     create_array_routine oc livenow_tbl regtbl instr is_float
  | CallDir (_, Id.L(l), _, _) when l = "min_caml_create_float_array" ->
     let is_float = true in
     create_array_routine oc livenow_tbl regtbl instr is_float
  | CallDir _ -> calldir_routine oc livenow_tbl regtbl instr
  | Entry _ -> entry_routine oc regtbl instr
  | Return((x, t)) -> move_return_val oc regtbl x t; false
  | e -> (* case of simple operations *)
     let defs, uses = Lra.defs_uses_of_instr instr in
     out_sor oper defs uses; false

and create_array_routine oc livenow_tbl regtbl instr is_float =
  let iid = instr.instr_id in
  let oper = instr.op in
  match oper with
  | CallDir((x, t), Id.L(l), ys, zs) ->
     let y, z =
       if is_float then
         match ys, zs with
         | [y], [z] -> y, z
         | _ -> assert false
       else
         match ys, zs with
         | [y; z], [] -> y, z
         | _ -> assert false in
     restore_saves oc regtbl [y; z];
     let livenow = S.remove x (Lra.lookup_livenow livenow_tbl iid) in
     let livenow' = S.elements
                      (S.diff livenow (S.of_list [y; z])) in
     let saves = List.concat
                   (List.map
                      (fun x -> match lookup_alloc regtbl x with
                                    | Alloc(r) when not is_float ->
                                       if r = regs.(0) || r = regs.(1) then
                                         [r]
                                       else
                                         []
                                    | Alloc(r) ->
                                       if r = regs.(0) || r = fregs.(0) then
                                         [r]
                                       else
                                         []
                                    | Spill _ -> [])
                      livenow') in
     (* let saves = if List.mem regs.(0) saves then saves else regs.(0) :: saves in *)
     let new_top, savemap = make_savemap_old saves !stacktop in
     let rrs, xrs = make_int_argmap regtbl ys in
     let frrs, fxrs = make_float_argmap regtbl zs in
     save_live_regs oc savemap;
     align_args oc rrs xrs frrs fxrs;
     Printf.fprintf oc "\tsw\t%s %s %d\n" reg_sp reg_ra new_top;
     (* Printf.fprintf oc "\taddi\t%s %s %d\n" reg_sp reg_sp (new_top - 4); *)
     Printf.fprintf oc "\tjal\t%s\n" l;
     (* Printf.fprintf oc "\taddi\t%s %s %d\n" reg_sp reg_sp (- (new_top - 4)); *)
     Printf.fprintf oc "\tlw\t%s %s %d\n" reg_sp reg_ra new_top;
     move_return_val oc regtbl x t;
     (if S.mem y livenow then
        move_val oc regtbl "%r30" y (Type.Int));
     (if S.mem z livenow && not is_float then
        (* if is_float then
         *   move_val oc regtbl "%f0" z (Type.Float)
         * else *)
          move_val oc regtbl "%r2" z (Type.Int));
     restore_live_regs oc savemap;
     false
  | _ -> assert false
    
and callcls_routine oc livenow_tbl regtbl instr =
  let iid = instr.instr_id in
  let oper = instr.op in
  match oper with
  | CallCls((x, t), f, ys, zs) ->
    restore_saves oc regtbl (f :: ys @ zs);
    add_list_to_stackmap regtbl (x :: f :: (ys @ zs));
     let livenow = S.remove x (Lra.lookup_livenow livenow_tbl iid) in
     let is_tail = Lra.lookup_is_tail livenow_tbl iid in
       (* try H.find livenow_tbl iid with Not_found -> assert false in *)
     let livenow = S.elements livenow in
     let saves = List.concat (* 関数呼び出しに際してsaveが必要なregisters *)
                   (List.map
                      (fun x -> match lookup_alloc regtbl x with
                                | Alloc(r) ->
                                   if r <> Asm.reg_zero
                                      && r <> Asm.reg_sp
                                      && r <> Asm.reg_hp then [(x, r)]
                                   else
                                     []
                                | Spill _ -> [])
                      livenow) in
     (* let new_top, savemap = make_savemap saves !stacktop in *)
     let new_top, savemap = make_savemap saves in
     let rrs, xrs = make_int_argmap regtbl ys in
     let rrs, xrs = 
       (match lookup_alloc regtbl f with
        | Alloc(r) -> ((r, reg_cl) :: rrs), xrs
        | Spill _ -> spill f; rrs, ((f, reg_cl) :: xrs)) in
     let frrs, fxrs = make_float_argmap regtbl zs in
     if is_tail then
       tail_callcls_routine oc rrs xrs frrs fxrs
     else
       (save_live_regs oc savemap;
        align_args oc rrs xrs frrs fxrs;
        Printf.fprintf oc "\tsw\t%s %s %d\n" reg_sp reg_ra new_top;
        Printf.fprintf oc "\tlw\t%s %s 0\n" reg_cl reg_sub1;
        Printf.fprintf oc "\taddi\t%s %s %d\n" reg_sp reg_sp (new_top - 4);
        Printf.fprintf oc "\tjalr\t%s\n" reg_sub1;
        Printf.fprintf oc "\taddi\t%s %s %d\n" reg_sp reg_sp (- (new_top - 4));
        Printf.fprintf oc "\tlw\t%s %s %d\n" reg_sp reg_ra new_top;
        move_return_val oc regtbl x t;
        (* restore_live_regs oc savemap; *)
        false)
  | _ -> assert false

and tail_callcls_routine oc rrs xrs frrs fxrs =
  align_args oc rrs xrs frrs fxrs;
  Printf.fprintf oc "\tlw\t%s %s 0\n" reg_cl reg_sub1;
  Printf.fprintf oc "\tjr\t%s\n" reg_sub1;
  true

and calldir_routine oc livenow_tbl regtbl instr =
  let iid = instr.instr_id in
  let oper = instr.op in
  match oper with
  | CallDir((x, t), Id.L(l), ys, zs) ->
    restore_saves oc regtbl (ys @ zs);
     add_list_to_stackmap regtbl (x :: (ys @ zs));
     let livenow = S.remove x (Lra.lookup_livenow livenow_tbl iid) in
     let is_tail = Lra.lookup_is_tail livenow_tbl iid in
       (* try H.find livenow_tbl iid with Not_found -> assert false in *)
     let livenow = S.elements livenow in
     let saves = List.concat
                   (List.map
                      (fun x -> match lookup_alloc regtbl x with
                                | Alloc(r) ->
                                   if r <> Asm.reg_zero
                                      && r <> Asm.reg_sp
                                      && r <> Asm.reg_hp then [(x, r)]
                                   else
                                     []                
                                | Spill _ -> [])
                      livenow) in
     (* let new_top, savemap = make_savemap saves !stacktop in *)
     let new_top, savemap = make_savemap saves in
     let rrs, xrs = make_int_argmap regtbl ys in
     let frrs, fxrs = make_float_argmap regtbl zs in
     if is_tail then
       tail_calldir_routine oc l rrs xrs frrs fxrs
     else
       (save_live_regs oc savemap;
        align_args oc rrs xrs frrs fxrs;
        Printf.fprintf oc "\tsw\t%s %s %d\n" reg_sp reg_ra new_top;
        Printf.fprintf oc "\taddi\t%s %s %d\n" reg_sp reg_sp (new_top - 4);
        Printf.fprintf oc "\tjal\t%s\n" l;
        Printf.fprintf oc "\taddi\t%s %s %d\n" reg_sp reg_sp (- (new_top - 4));
        Printf.fprintf oc "\tlw\t%s %s %d\n" reg_sp reg_ra new_top;
        move_return_val oc regtbl x t;
        (* restore_live_regs oc savemap; *)
        false)
  | _ -> assert false

and tail_calldir_routine oc l rrs xrs frrs fxrs =
  align_args oc rrs xrs frrs fxrs;
  Printf.fprintf oc "\tj\t%s\n" l;
  true
     
and entry_routine oc regtbl instr =
  let oper = instr.op in
  match oper with
  | Entry(l, xs, ys) ->
     add_list_to_stackmap regtbl (xs @ ys);
     let rrs, xrs = make_int_argmap regtbl xs in
     let rrs = List.map (fun (x, y) -> (y, x)) rrs in
     let rrs, xrs =
       (match lookup_alloc regtbl l with
        | Alloc(r) -> if reg_cl <> r then
                        ((reg_cl, r) :: rrs), xrs
                      else
                        rrs, xrs
        | Spill _ -> rrs, (spill l; (l, reg_cl) :: xrs)) in
     let frrs, fxrs = make_float_argmap regtbl ys in
     let frrs = List.map (fun (x, y) -> (y, x)) frrs in
     insert_int_save oc xrs;
     insert_int_shuffle oc rrs;
     insert_float_save oc fxrs;
     insert_float_shuffle oc frrs;
     false
  | _ -> assert false



let output_block oc livenow_tbl regtbl block =
  assert (S.is_empty !saveset);
  let bool = List.fold_left
      (fun _ instr -> output_instr oc livenow_tbl regtbl instr)
      false block.code in
  let saves = S.elements !saveset in
  saveset := S.empty;
  List.iter 
    (fun x ->
       match lookup_alloc regtbl x with
       | Alloc(r) ->
         if is_freg r then
           Printf.fprintf oc "\tlw.s\t%s %s %d\n" reg_sp r (try get_offset x with Not_found -> assert false)
         else
           Printf.fprintf oc "\tlw\t%s %s %d\n" reg_sp r (try get_offset x with Not_found -> assert false)
       | Spill _ -> assert false)
    saves;
  List.iter
    (fun x -> H.remove stackmap x) saves;
  bool


let is_done tbl block =
  let l = Cfg.label_of_block block in
  try
    H.find tbl l
  with
    Not_found -> H.add tbl l true; false


(* insert branchs/jumps at the tail of a block and 
 * push its next blocks to appropriate stacks *)
let push_next oc livenow_tbl regtbl work_tbl block stack_bl stack_cf =
  let is_not_done = (fun x -> not (is_done work_tbl x)) in
  let tail_call = output_block oc livenow_tbl regtbl block in
  match block.next with
  | Brc(cmpr, bref1, bref2) ->
     let b1, b2 = !bref1, !bref2 in
     let l1 = Cfg.label_of_block b1 in
     let l2 = Cfg.label_of_block b2 in
     let x, y = cmpr.args in
     let brnc, reverse = brnc cmpr.branch in
     let _, uregmap, _ , uspls = get_reg regtbl [] [x; y] in
     let ulu = lookup_regmap uregmap in
     insert_restore oc uregmap uspls;
     if reverse then
       (Printf.fprintf oc "\t%s\t%s %s %s\n" brnc (ulu x) (ulu y) l2;
        if is_not_done b1 && is_not_done b2 then
          (Stack.push (true, b2) stack_bl;
           Stack.push (true, b1) stack_bl) (* branchせずにまっすぐ降りた時にb1へ遷移 *)
        else
          assert false) 
     else
       (Printf.fprintf oc "\t%s\t%s %s %s\n" brnc (ulu x) (ulu y) l1;
        if is_not_done b1 && is_not_done b2 then
          (Stack.push (true, b1) stack_bl;
           Stack.push (true, b2) stack_bl) (* branchせずにまっすぐ降りた時にb2へ遷移 *)
        else
          assert false
       (* program_startからbranch後のブロックへは *)
         (* branching blockを経由しなければいけないはず...? *))
  | Cnfl(bref) ->
     let stack_top_label stack =
       let _, block = try Stack.top stack
                      with Stack.Empty -> assert false in
       Cfg.label_of_block block in
     let b = !bref in
     let l = Cfg.label_of_block b in
     if is_not_done b then
       let push_stack = necessary_block b in
         (* not (return_block b && unnecessary_return b) in *)
       (if Stack.is_empty stack_bl then (* この時に限りcnfl blockを真下にかけるのでjumpがいらない *)
          (if push_stack then
             Stack.push (true, b) stack_cf)
        else (* 次に書かれるのはstack_blのトップだからjumpがいる *)
          ((if push_stack then
              Stack.push (true, b) stack_cf);
           if not tail_call then
             Printf.fprintf oc "\tj\t%s\n" l))
     else if not (Stack.is_empty stack_bl) then
       (if l = stack_top_label stack_bl then
          ()
        else
          if not tail_call then
            Printf.fprintf oc "\tj\t%s\n" l)
     else if not (Stack.is_empty stack_cf) then (* stack_bl is empty *)
       (if l = stack_top_label stack_cf then
          ()
        else
          if not tail_call then
            Printf.fprintf oc "\tj\t%s\n" l)
     else
       Printf.fprintf oc "\tj\t%s\n" l
  | Loop(bref, _) ->
     let b = !bref in
     if is_not_done b then
       Stack.push (true, b) stack_bl
     else
       assert false (* program startからloop前ブロックを経由せずにループブロックへはいけない *)
  | Back(_, bref) ->
     let b = !bref in
     let l = Cfg.label_of_block b in
     (if is_not_done b then assert false); (* jumpへはループブロックを経由しないと行けない *)
     Printf.fprintf oc "\tj\t%s\n" l
  | End (is_ret) ->
     if is_ret then
       (Printf.fprintf oc "program_end :\n";
        Printf.fprintf oc "\tadd\t%%r0 %%r0 %%r0\n";
        Printf.fprintf oc "\tret\n")
     else
       Printf.fprintf oc "\tretl\n"


(* out_scan travels a cfg and emit the codes of visited blocks in order *)
let rec out_scan oc livenow_tbl regtbl work_tbl stack_bl stack_cf =
  if Stack.is_empty stack_bl && Stack.is_empty stack_cf then
    ()
  else if not (Stack.is_empty stack_bl) then
    let whether_print_label, block = Stack.pop stack_bl in
    (if whether_print_label then
       let l = label_of_block block in
       Printf.fprintf oc "%s :\n" l);
    push_next oc livenow_tbl regtbl work_tbl block stack_bl stack_cf;
    out_scan oc livenow_tbl regtbl work_tbl stack_bl stack_cf
  else (* stack_cf is not empty *)
    let whether_print_label, block = Stack.pop stack_cf in
    (if whether_print_label then
       let l = label_of_block block in
       Printf.fprintf oc "%s :\n" l);
    push_next oc livenow_tbl regtbl work_tbl block stack_bl stack_cf;
    out_scan oc livenow_tbl regtbl work_tbl stack_bl stack_cf


let output_cfg oc livenow_tbl regtbl blocks =
  let work_tbl = H.create (List.length blocks) in
  let stack_lb = Stack.create () in (* loop, branch blocksのリスト *)
  let stack_cf = Stack.create () in (* cnfl blocksのリスト *)
  let b = List.hd blocks in
  let l = Cfg.label_of_block b in
  Stack.push (true, b) stack_lb;
  H.add work_tbl l true;
  out_scan oc livenow_tbl regtbl work_tbl stack_lb stack_cf;
  assert ((H.length work_tbl) = (List.length blocks));
  try
    List.iter
      (fun b -> let l = Cfg.label_of_block b in
                let _ = H.find work_tbl l in ()) blocks
  with
    Not_found -> assert false


let arrange_data oc data =
  Printf.fprintf oc "#data_section\n";
  let hp = Id.genid "hp_init" in
  let sp = Id.genid "sp_init" in
  Printf.fprintf oc "%s :\n" hp;
  Printf.fprintf oc "\t.int\t0x0\n";
  Printf.fprintf oc "%s :\n" sp;
  Printf.fprintf oc "\t.int\t0xffffff0\n";
  List.iter
    (fun (Id.L(x), d') ->
      match d' with
      | F (d) ->
         Printf.fprintf oc "%s :\t# %f\n" x d;
         Printf.fprintf oc "\t.float\t0x%lx\n" (get d);
      | I (d) ->
         Printf.fprintf oc "%s :\t# %d\n" x d;
         Printf.fprintf oc "\t.int\t0x%x\n" d)
    data;
  hp, sp


let f : out_channel -> MemAlloc.memtbl_t -> Cfg.prog -> unit =
  fun oc memtbl (Prog(mems, data, f_cfgs, cfg)) ->
  let reset_ar _ =
    stacktop := 0;
    H.clear stackmap in
    (* H.clear stackmap_sub in *)
  (* let Prog (mems, data, f_cfgs, cfg) = Cfg.f virtCode tp in *)
  let hp, sp = arrange_data oc data in
  Printf.fprintf oc "#text_section\n";
  Printf.fprintf oc "program_start :\n";
  Printf.fprintf oc "\tilw\t%%r0 %%r26 %s\n" sp;
  Printf.fprintf oc "\tilw\t%%r0 %%r27 %s\n" hp;
  MemMap.f oc memtbl mems;
  Printf.fprintf oc "\taddi\t%%r0 %%r28 program_end\n";
  List.iter
    (fun blocks ->
      let igraph, livenow_tbl, stat_tbl = Lra2.build_igraph blocks in
      let regtbl = RegAlloc2.f stat_tbl igraph in
      reset_ar ();
      output_cfg oc livenow_tbl regtbl blocks)
    (cfg :: f_cfgs);
  Printf.fprintf oc "#libraries\n";
  let lib = open_in "lib.s" in
  try
    while true do Printf.fprintf oc "%s\n" (input_line lib) done
  with End_of_file -> ()
