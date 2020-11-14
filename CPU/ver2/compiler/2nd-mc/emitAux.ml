open Asm
open Enums
open RegAlloc2
open Cfg

(* offset of the current AR *)
let stacktop = ref 0
             
(* table mapping ids to its offset in AR *)
let stackmap = H.create 5000

let saveset = ref S.empty

let save x =
  if not (H.mem stackmap x) then
    (H.add stackmap x !stacktop;
     saveset := S.add x !saveset;
     stacktop := !stacktop - 4)

let spill x =
  if not (H.mem stackmap x) then
    (H.add stackmap x !stacktop;
     stacktop := !stacktop - 4)


let add_list_to_stackmap regtbl xs =
  let xs = List.map fst (* spillされた変数を集める *)
             (List.filter
                (fun (x, a) -> not (is_alloc a))
                (List.map (fun x -> (x, lookup_alloc regtbl x)) xs)) in
  List.iter spill xs


let get_offset x =
  H.find stackmap x
(* try H.find stackmap x with Not_found -> assert false *)


(* 関数呼び出しのために引数を並べ替える(register shuffling) (caml2html: emit_shuffle) *)
let rec shuffle sw xys =
  (* remove identical moves *)
  let _, xys = List.partition (fun (x, y) -> x = y) xys in
  (* find acyclic moves *)
  match List.partition (fun (_, y) -> List.mem_assoc y xys) xys with
  | [], [] -> []
  | (x, y) :: xys, [] -> (* no acyclic moves; resolve a cyclic move *)
      (y, sw) :: (x, y) :: shuffle sw (List.map
                                         (function
                                           | (y', z) when y = y' -> (sw, z)
                                           | yz -> yz)
                                         xys)
  | xys, acyc -> acyc @ shuffle sw xys
   
(* auxiliary funcion for get_reg *)
let add_regmap regtbl =
  fun (spl_regs, fspl_regs, regmap, spilled) x ->
  match lookup_alloc regtbl x with
  | Alloc(r) -> (spl_regs, fspl_regs, (x,r) :: regmap, spilled)
  | Spill (t) ->
     (match t with
      | Type.Float -> (* float型のspillの時 *)
         if not (List.mem_assoc x regmap) then
           ((* まだregmapに追加されていないとき *)
            spill x; (* AR上に追加 *)
            match fspl_regs with
            | r :: rs -> (spl_regs, rs, (x, r) :: regmap, (x, t) :: spilled)
            | [] -> assert false (* spill regは２つあれば足りるはず *))
         else (* すでにregmapに追加されているときは何もしない *)
           (spl_regs, fspl_regs, regmap, spilled)
      | _ -> (* その他の型の時 *)
         if not (List.mem_assoc x regmap) then
           (spill x;
            match spl_regs with
            | r :: rs -> (rs, fspl_regs, (x, r) :: regmap, (x, t) :: spilled)
            | [] -> assert false)
         else
           (spl_regs, fspl_regs, regmap, spilled))
    

(* create regmaps *)
let get_reg regtbl defs uses =
  let _, _, dregmap, dspls =
    List.fold_left
      (add_regmap regtbl)
      ([reg_sub1; reg_sub2], [freg_sub1; freg_sub2], [], [])
      defs in
  let _, _, uregmap, uspls =
    List.fold_left
      (add_regmap regtbl)
      ([reg_sub1; reg_sub2], [freg_sub1; freg_sub2], [], [])
      uses in
  dregmap, uregmap, (List.rev dspls), (List.rev uspls)


let lookup_regmap regmap x =
  if Asm.is_reg x then x
  else try List.assoc x regmap with Not_found -> assert false
                                        

let insert_restore oc regmap spilled =
  List.iter
    (fun (x, t) ->
      let reg = lookup_regmap regmap x in
      let offset = try get_offset x with Not_found -> assert false in
      if t = Type.Float then
        Printf.fprintf oc "\tlw.s\t%s %s %d\n" reg_sp reg offset
      else
        Printf.fprintf oc "\tlw\t%s %s %d\n" reg_sp reg offset)
    spilled


let insert_save oc regmap spilled =
  List.iter
    (fun (x, t) ->
      let reg = lookup_regmap regmap x in
      let offset = try get_offset x with Not_found -> assert false in
      if t = Type.Float then
        Printf.fprintf oc "\tsw.s\t%s %s %d\n" reg_sp reg offset
      else
        Printf.fprintf oc "\tsw\t%s %s %d\n" reg_sp reg offset)
    spilled


let output_simple_op oc dregmap uregmap operation =
  let dlu x =
    if S.mem x !saveset then
      (saveset := S.remove x !saveset;
       let r = lookup_regmap dregmap x in
       (if is_freg r then
         Printf.fprintf oc "\tlw.s\t%s %s %d\n" reg_sp r (try get_offset x with Not_found -> assert false)
       else
         Printf.fprintf oc "\tlw\t%s %s %d\n" reg_sp r (try get_offset x with Not_found -> assert false));
       H.remove stackmap x;
       r)
    else
      lookup_regmap dregmap x in 
      (* lookup_regmap dregmap in *)
  (* let ulu = lookup_regmap uregmap in *)
  let ulu x =
    if S.mem x !saveset then
      (saveset := S.remove x !saveset;
       let r = lookup_regmap uregmap x in
       (if is_freg r then
          Printf.fprintf oc "\tlw.s\t%s %s %d\n" reg_sp r (get_offset x)
        else
          Printf.fprintf oc "\tlw\t%s %s %d\n" reg_sp r (get_offset x));
       H.remove stackmap x;
       r)
    else
      lookup_regmap uregmap x in 
  match operation with
  | Phi _ -> () (* Phi関数は単純に消す *)
  | Nop -> ()
  | Set((x, _), i) ->
     Printf.fprintf oc "\taddi\t%%r0 %s %d\n" (dlu x) i
  | SetF _ -> assert false (* 浮動小数点数を直接ロードする命令はない *)
  | SetL((x, _), (Id.L(l))) ->
     Printf.fprintf oc "\taddi\t%%r0 %s %s\n" (dlu x) l
  | ILd((x, _), (Id.L(l))) ->
     let r = dlu x in
     if is_freg r then
       Printf.fprintf oc "\tilw.s\t%%r0 %s %s\n" r l
     else
       Printf.fprintf oc "\tilw\t%%r0 %s %s\n" r l
  | Mov((x, _), y) when (dlu x) = (ulu y) -> ()
  | Mov((x, t), y) ->
     if t = Type.Float then
       Printf.fprintf oc "\tmov.s\t%s %s\n" (ulu y) (dlu x)
     else
       Printf.fprintf oc "\tmov\t%s %s\n" (ulu y) (dlu x)
  | Neg((x, _), y) -> Printf.fprintf oc "\tsub\t%%r0 %s %s\n" (ulu y) (dlu x)
  | Itof((x, _), y) -> Printf.fprintf oc "\tmtc1\t%s %s\n" (ulu y) (dlu x)
  | In((x, _)) -> Printf.fprintf oc "\tin\t%s\n" (dlu x)
  | Fin((x, _)) -> Printf.fprintf oc "\tfin\t%s\n" (dlu x)
  | Out(y) -> Printf.fprintf oc "\tout\t%s\n" (ulu y)
  | AddI((x, _), y, i) -> Printf.fprintf oc "\taddi\t%s %s %d\n" (ulu y) (dlu x) i
  | Add((x, _), y, z) -> Printf.fprintf oc "\tadd\t%s %s %s\n" (ulu y) (ulu z) (dlu x)
  | Sub((x, _), y, z) -> Printf.fprintf oc "\tsub\t%s %s %s\n" (ulu y) (ulu z) (dlu x)
  | Mul((x, _), y, z) -> Printf.fprintf oc "\tmul\t%s %s %s\n" (ulu y) (ulu z) (dlu x)
  | Div((x, _), y, z) -> Printf.fprintf oc "\tdiv\t%s %s %s\n" (ulu y) (ulu z) (dlu x)
  | SLLI((x, _), y, i) -> Printf.fprintf oc "\tslli\t%s %s %d\n" (ulu y) (dlu x) i
  | SLL((x, _), y, z) -> Printf.fprintf oc "\tsll\t%s %s %s\n" (ulu y) (dlu x) (ulu z)
  | SRLI((x, _), y, i) -> Printf.fprintf oc "\tslli\t%s %s -%d\n" (ulu y) (dlu x) i
  (* | SRL((x, _), y, z) -> assert false *)
    (* Printf.fprintf oc "\tsrl\t%s %s %s\n" (ulu y) (dlu x) (ulu z) *)
  | Ld((x, _), y, i) ->
     Printf.fprintf oc "\tlw\t%s %s %d\n" (ulu y) (dlu x) i
  | St(x, y, i) ->
     Printf.fprintf oc "\tsw\t%s %s %d\n" (ulu y) (ulu x) i
  | FMov((x, _), y) when (dlu x) = (ulu y) -> ()
  | FMov((x, _), y) -> Printf.fprintf oc "\tmov.s\t%s %s\n" (ulu y) (dlu x)
  | FNeg((x, _), y) -> Printf.fprintf oc "\tneg.s\t%s %s\n" (ulu y) (dlu x)
  | Floor((x, _), y) -> Printf.fprintf oc "\tfloor.w.s\t%s %s\n" (ulu y) (dlu x)
  | Ftoi((x, _), y) -> Printf.fprintf oc "\tmfc1\t%s %s\n" (dlu x) (ulu y)
  | FSqrt((x, _), y) -> Printf.fprintf oc "\tsqrt.s\t%s %s\n" (ulu y) (dlu x)
  | FAdd((x, _), y, z) -> Printf.fprintf oc "\tadd.s\t%s %s %s\n" (ulu z) (ulu y) (dlu x)
  | FSub((x, _), y, z) -> Printf.fprintf oc "\tsub.s\t%s %s %s\n" (ulu z) (ulu y) (dlu x)
  | FMul((x, _), y, z) -> Printf.fprintf oc "\tmul.s\t%s %s %s\n" (ulu z) (ulu y) (dlu x)
  | FDiv((x, _), y, z) -> Printf.fprintf oc "\tdiv.s\t%s %s %s\n" (ulu z) (ulu y) (dlu x)
  | LdF((x, _), y, i) ->
     Printf.fprintf oc "\tlw.s\t%s %s %d\n" (ulu y) (dlu x) i
  | StF(x, y, i) ->
     Printf.fprintf oc "\tsw.s\t%s %s %d\n" (ulu y) (ulu x) i
  | Return((x, t)) ->
     if t = Type.Float then
       (if (ulu x) <> fregs.(0) then
          Printf.fprintf oc "\tmov.s\t%s %s\n" (ulu x) fregs.(0))
     else
       (if (ulu x) <> regs.(0) then
          Printf.fprintf oc "\tmov\t%s %s\n" (ulu x) regs.(0))
  | _ -> assert false



(* functions for calling convention *)
let make_savemap_old saves top =
  let new_top, savemap =
    List.fold_left
      (fun (ofs, acc) r ->
        (ofs - 4, (r, ofs) :: acc))
      (top, []) saves in
  new_top, savemap

let make_savemap saves =
  let savemap = 
    List.concat
      (List.map 
         (fun (x, r) -> if S.mem x !saveset then []
           else (save x; [(r, H.find stackmap x)]))
         saves) in
  !stacktop, savemap


let restore_saves oc regtbl saves =
  List.iter
    (fun x ->
       if S.mem x !saveset then
         (saveset := S.remove x !saveset;
         match lookup_alloc regtbl x with
         | Alloc(r) -> 
           if is_freg r then
             (Printf.fprintf oc "\tlw.s\t%s %s %d\n" reg_sp r (get_offset x);
              H.remove stackmap x)
           else
             (Printf.fprintf oc "\tlw\t%s %s %d\n" reg_sp r (get_offset x);
              H.remove stackmap x)
         | Spill _ -> assert false))
    saves
  
         


let save_live_regs oc savemap =
  List.iter
    (fun (r, ofs) ->
      if is_freg r then
        Printf.fprintf oc "\tsw.s\t%s %s %d\n" reg_sp r ofs
      else
        Printf.fprintf oc "\tsw\t%s %s %d\n" reg_sp r ofs)
    savemap


let restore_live_regs oc savemap =
  List.iter
    (fun (r, ofs) ->
      if is_freg r then
        Printf.fprintf oc "\tlw.s\t%s %s %d\n" reg_sp r ofs
      else
        Printf.fprintf oc "\tlw\t%s %s %d\n" reg_sp r ofs)
    savemap


let make_int_argmap regtbl xs =
  let allocs = List.map
               (fun x -> (x, lookup_alloc regtbl x))
               xs in
  let _, shuffle_map = List.fold_left
                        (fun (i, acc) (x, a) -> (i + 1, (x, a, regs.(i)) :: acc))
                        (0, []) allocs in
  let xrrs, xsrs = List.partition
                   (fun (_, a, _) -> is_alloc a)
                   shuffle_map in
  let rrs = List.map (fun (_, a, r) -> (alloced_reg a, r)) xrrs in
  let xrs = List.map (fun (x, _, r) -> spill x; (x, r)) xsrs in
  rrs, xrs


let make_float_argmap regtbl xs =
  let allocs = List.map
                 (fun x -> (x, lookup_alloc regtbl x))
                 xs in
  let _, shuffle_map = List.fold_left
                         (fun (i, acc) (x, a) -> (i + 1, (x, a, fregs.(i)) :: acc))
                         (0, []) allocs in
  let xrrs, xsrs = List.partition
                   (fun (_, a, _) -> is_alloc a)
                   shuffle_map in
  let rrs = List.map (fun (_, a, r) -> (alloced_reg a, r)) xrrs in
  let xrs = List.map (fun (x, _, r) -> spill x; (x, r)) xsrs in
  rrs, xrs


let insert_int_shuffle oc xys =
  List.iter
    (fun (x, y) -> Printf.fprintf oc "\tmov\t%s %s\n" x y)
    (shuffle reg_sub2 xys)


let insert_float_shuffle oc xys =
  List.iter
    (fun (x, y) -> Printf.fprintf oc "\tmov.s\t%s %s\n" x y)
    (shuffle freg_sub1 xys)


let insert_int_restore oc xrs =
  List.iter
    (fun (x, r) -> Printf.fprintf oc "\tlw\t%s %s %d\n" reg_sp r
                     (try get_offset x with Not_found -> assert false))
    xrs


let insert_float_restore oc xrs =
  List.iter
    (fun (x, r) -> Printf.fprintf oc "\tlw.s\t%s %s %d\n" reg_sp r
                     (try get_offset x with Not_found -> assert false))
    xrs


let insert_int_save oc xrs =
  List.iter
    (fun (x, r) -> Printf.fprintf oc "\tsw\t%s %s %d\n" reg_sp r
                     (try get_offset x with Not_found -> assert false))
    xrs


let insert_float_save oc xrs =
  List.iter
    (fun (x, r) -> Printf.fprintf oc "\tsw.s\t%s %s %d\n" reg_sp r
                     (try get_offset x with Not_found -> assert false))
    xrs

  
let align_args oc rrs xrs frrs fxrs =
  insert_int_shuffle oc rrs; (* レジスタに乗っている引数をシャッフル *)
  insert_int_restore oc xrs; (* 乗っていない引数をロード *)
  insert_float_shuffle oc frrs;
  insert_float_restore oc fxrs


let move_return_val oc regtbl x t =
  if t = Type.Float then
    (match lookup_alloc regtbl x with
     | Alloc(r) when r <> fregs.(0) ->
        Printf.fprintf oc "\tmov.s\t%s %s\n" fregs.(0) r
     | Alloc _ -> ()
     | Spill _ ->
        Printf.fprintf oc "\tsw.s\t%s %s %d\n" reg_sp fregs.(0) (try get_offset x with Not_found -> assert false))
  else
    (match lookup_alloc regtbl x with
     | Alloc(r) when r <> regs.(0) ->
        Printf.fprintf oc "\tmov\t%s %s\n" regs.(0) r
     | Alloc _ -> ()
     | Spill _ ->
        Printf.fprintf oc "\tsw\t%s %s %d\n" reg_sp regs.(0) (try get_offset x with Not_found -> assert false))

  
let move_val oc regtbl reg x t =
  assert (is_reg reg);
  let alloc = lookup_alloc regtbl x in
  if t = Type.Float then
    (assert (is_freg reg);
     match alloc with
     | Alloc(r) when r <> reg ->
        Printf.fprintf oc "\tmov.s\t%s %s\n" reg r
     | _ -> ())
  else
    (if (not (is_freg reg)) then
       Format.eprintf "EmitAux : ----- reg = %s ----@." reg;
     (assert (not (is_freg reg));
      match alloc with
      | Alloc(r) when r <> reg && r <> "%r0" ->
         Printf.fprintf oc "\tmov\t%s %s\n" reg r
      | _ -> ()))


(* functions for Emit2.push_next *)
let brnc (t, cmp) =
  match t with
  | Type.Float ->
     (match cmp with
      | Eq -> "fbne", true
      | NE -> "fbne", false
      | LE -> "fbg", true
      | Lt -> "fbge", true)
  | _ ->
     (match cmp with
      | Eq -> "beq", false
      | NE -> "bne", false
      | LE -> "ble", false
      | Lt -> "bl", false)

    
let call_at_tail block =
  let code = block.code in
  if code = [] then false
  else
    match (List.hd (List.rev code)).op with
    | CallCls _ | CallDir _ -> true
    | _ -> false
      


let necessary_block block =
(* a confl block is not necessary
 * when it's unreachable due to tail-call optimization *)
  match block.next with
  | End prog_end ->
     prog_end || not (List.for_all call_at_tail block.prev)
  | _ -> true
