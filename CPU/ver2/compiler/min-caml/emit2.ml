open Asm2
open Enums
open RegAlloc2
open Cfg

external get : float -> int32 = "get"

(* 現在のARのstacktopのoffset *)
let stacktop = ref 0
(* 変数からoffsetへのmap *)
let stackmap = H.create 5000
             
(* loopの前後に上書きされる変数をsaveするmap *)
let stackmap_sub = H.create 100

let reset_ar _ =
  stacktop := 0;
  H.clear stackmap;
  H.clear stackmap_sub


let save x =
  if not (H.mem stackmap x) then
    (H.add stackmap x !stacktop;
     stacktop := !stacktop + 4)

let save_sub x =
  (* 以前のsaveの結果も後々必要になるので，stackに積み重ねていく *)
  H.add stackmap_sub x !stacktop;
  stacktop := !stacktop + 4
let remov_sub x =
  assert (H.mem stackmap_sub x);
  H.remove stackmap_sub x

let add_list_to_stackmap regtbl xs =
  let xs = List.map fst (* spillされた変数を集める *)
             (List.filter
                (fun (x, a) -> not (is_alloc a))
                (List.map (fun x -> (x, lookup_alloc regtbl x)) xs)) in
  List.iter save xs

let get_offset x =
  H.find stackmap x
  (* try H.find stackmap x with Not_found -> assert false *)

let get_offset_sub x =
  try H.find stackmap_sub x with Not_found -> assert false


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

let add_regmap regtbl =
  fun (spl_regs, fspl_regs, regmap, spilled) x ->
  match lookup_alloc regtbl x with
  | Alloc(r) -> (spl_regs, fspl_regs, (x,r) :: regmap, spilled)
  | Spill (t) ->
     (match t with
      | Type.Float -> (* float型のspillの時 *)
         if not (List.mem_assoc x regmap) then
           ((* まだregmapに追加されていないとき *)
            save x; (* AR上に追加 *)
            match fspl_regs with
            | r :: rs -> (spl_regs, rs, (x, r) :: regmap, (x, t) :: spilled)
            | [] -> assert false (* spill regは２つあれば足りるはず *))
         (* else if not (List.mem_assoc x spilled) then
          *   (\* regmapに追加されているがspilledに追加されていない *\)
          *   (\* これはdefsの後のusesのときの計算で起こりうる, get_reg中参照 *\)
          *   (spl_regs, fspl_regs, regmap, (x, t) :: spilled) *)
         else (* すでにregmapに追加されているときは何もしない *)
           (spl_regs, fspl_regs, regmap, spilled)
      | _ -> (* その他の型の時 *)
         if not (List.mem_assoc x regmap) then
           (save x;
            match spl_regs with
            | r :: rs -> (rs, fspl_regs, (x, r) :: regmap, (x, t) :: spilled)
            | [] -> assert false)
         (* else if not (List.mem_assoc x spilled) then
          *   (spl_regs, fspl_regs, regmap, (x, t) :: spilled) *)
         else
           (spl_regs, fspl_regs, regmap, spilled))
     

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
  if Asm2.is_reg x then x
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
  let dlu = lookup_regmap dregmap in
  let ulu = lookup_regmap uregmap in
  match operation with
  | Phi _ -> () (* Phi関数は単純に消す *)
  | Nop -> ()
  | Set((x, _), i) ->
     Printf.fprintf oc "\taddi\t%%r0 %s %d\n" (dlu x) i
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
  | Ld((x, _), y, C(i)) ->
     Printf.fprintf oc "\tlw\t%s %s %d\n" (ulu y) (dlu x) i
  | Ld((x, _), y, V(z)) ->
     Printf.fprintf oc "\tadd\t%s %s %%r31\n" (ulu y) (ulu z);
     Printf.fprintf oc "\tlw\t%%r31 %s 0\n" (dlu x)
  | St(x, y, C(i)) ->
     Printf.fprintf oc "\tsw\t%s %s %d\n" (ulu y) (ulu x) i
  (* | St(x, y, V(z)) ->
   *    Printf.fprintf oc "\tadd\t%s %s %%r31\n" (ulu y) (ulu z);
   *    Printf.fprintf oc "\tsw\t%%r31 %s 0\n" (ulu x)
   * | FMov((x, _), y) when (dlu x) = (ulu y) -> () *)
  | FMov((x, _), y) -> Printf.fprintf oc "\tmov.s\t%s %s\n" (ulu y) (dlu x)
  | FNeg((x, _), y) -> Printf.fprintf oc "\tneg.s\t%s %s\n" (ulu y) (dlu x)
  | Floor((x, _), y) -> Printf.fprintf oc "\tfloor.w.s\t%s %s\n" (ulu y) (dlu x)
  | Ftoi((x, _), y) -> Printf.fprintf oc "\tmfc1\t%s %s\n" (dlu x) (ulu y)
  | FSqrt((x, _), y) -> Printf.fprintf oc "\tsqrt.s\t%s %s\n" (ulu y) (dlu x)
  | FAdd((x, _), y, z) -> Printf.fprintf oc "\tadd.s\t%s %s %s\n" (ulu z) (ulu y) (dlu x)
  | FSub((x, _), y, z) -> Printf.fprintf oc "\tsub.s\t%s %s %s\n" (ulu z) (ulu y) (dlu x)
  | FMul((x, _), y, z) -> Printf.fprintf oc "\tmul.s\t%s %s %s\n" (ulu z) (ulu y) (dlu x)
  | FDiv((x, _), y, z) -> Printf.fprintf oc "\tdiv.s\t%s %s %s\n" (ulu z) (ulu y) (dlu x)
  | LdF((x, _), y, C(i)) ->
     Printf.fprintf oc "\tlw.s\t%s %s %d\n" (ulu y) (dlu x) i
  | LdF((x, _), y, V(z)) ->
     Printf.fprintf oc "\tadd\t%s %s %%r31\n" (ulu y) (ulu z);
     Printf.fprintf oc "\tlw.s\t%%r31 %s 0\n" (dlu x)
  | StF(x, y, C(i)) ->
     Printf.fprintf oc "\tsw.s\t%s %s %d\n" (ulu y) (ulu x) i
  (* | StF(x, y, V(z)) ->
   *    Printf.fprintf oc "\tadd\t%s %s %%r31\n" (ulu y) (ulu z);
   *    Printf.fprintf oc "\tsw.s\t%%r31 %s 0\n" (dlu x) *)
     (* CallCls, CallDir, Entryはsimpleではない, 特別なルーチンで扱う *)
  | Return((x, t)) ->
     if t = Type.Float then
       (if (ulu x) <> fregs.(0) then
          Printf.fprintf oc "\tmov.s\t%s %s\n" (ulu x) fregs.(0))
     else
       (if (ulu x) <> regs.(0) then
          Printf.fprintf oc "\tmov\t%s %s\n" (ulu x) regs.(0))
  | _ -> assert false


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
  | Set((x, _), _) -> out_sor oper [x] []; false
  | SetL((x, _), _) -> out_sor oper [x] []; false
  | ILd((x, _), _) -> out_sor oper [x] []; false
  | Mov((x, _), y) -> out_sor oper [x] [y]; false
  | Neg((x, _), y) -> out_sor oper [x] [y]; false
  | Itof((x, _), y) -> out_sor oper [x] [y]; false
  | In((x, _)) -> out_sor oper [x] []; false
  | Fin((x, _)) -> out_sor oper [x] []; false
  | Out(y) -> out_sor oper [] [y]; false
  | AddI((x, _), y, _) -> out_sor oper [x] [y]; false
  | Add((x, _), y, z) -> out_sor oper [x] [y; z]; false
  | Sub((x, _), y, z) -> out_sor oper [x] [y; z]; false
  | Mul((x, _), y, z) -> out_sor oper [x] [y; z]; false
  | Div((x, _), y, z) -> out_sor oper [x] [y; z]; false
  | SLLI((x, _), y, _) -> out_sor oper [x] [y]; false
  | SLL((x, _), y, z) -> out_sor oper [x] [y; z]; false
  | Ld((x, _), y, C(_)) -> out_sor oper [x] [y]; false
  | Ld((x, _), y, V(z)) ->
     let dregmap, uregmap, dspls, uspls = get_reg regtbl [] [y; z] in
     assert (dregmap = [] && dspls = []);
     insert_restore oc uregmap uspls; (* restore *)
     Printf.fprintf oc "\tadd\t%s %s %%r31\n"
       (lookup_regmap uregmap y) (lookup_regmap uregmap z);
     let dregmap, uregmap, dspls, uspls = get_reg regtbl [x] [] in
     assert (uregmap = [] && uspls = []);
     Printf.fprintf oc "\tlw\t%%r31 %s 0\n" (lookup_regmap dregmap x);
     insert_save oc dregmap dspls; (* save*)
     false
  | St(x, y, C(_)) -> out_sor oper [] [x; y]; false
  | St(x, y, V(z)) ->
     let dregmap, uregmap, dspls, uspls = get_reg regtbl [] [y; z] in
     assert (dregmap = [] && dspls = []);
     insert_restore oc uregmap uspls; (* restore *)
     Printf.fprintf oc "\tadd\t%s %s %%r31\n"
       (lookup_regmap uregmap y) (lookup_regmap uregmap z);
     let dregmap, uregmap, dspls, uspls = get_reg regtbl [] [x] in
     assert (dregmap = [] && dspls = []);
     insert_restore oc uregmap uspls; (* storeするxをrestore *)
     Printf.fprintf oc "\tsw\t%%r31 %s 0\n" (lookup_regmap uregmap x);
     false
  | FMov((x, _), y) -> out_sor oper [x] [y]; false
  | FNeg((x, _), y) -> out_sor oper [x] [y]; false
  | Floor((x, _), y) -> out_sor oper [x] [y]; false
  | Ftoi((x, _), y) -> out_sor oper [x] [y]; false
  | FSqrt((x, _), y) -> out_sor oper [x] [y]; false
  | FAdd((x, _), y, z) -> out_sor oper [x] [y; z]; false
  | FSub((x, _), y, z) -> out_sor oper [x] [y; z]; false
  | FMul((x, _), y, z) -> out_sor oper [x] [y; z]; false
  | FDiv((x, _), y, z) -> out_sor oper [x] [y; z]; false
  | LdF((x, _), y, C(_)) -> out_sor oper [x] [y]; false
  | LdF((x, _), y, V(z)) ->
     let dregmap, uregmap, dspls, uspls = get_reg regtbl [] [y; z] in
     assert (dregmap = [] && dspls = []);
     insert_restore oc uregmap uspls; (* restore *)
     Printf.fprintf oc "\tadd\t%s %s %%r31\n"
       (lookup_regmap uregmap y) (lookup_regmap uregmap z);
     let dregmap, uregmap, dspls, uspls = get_reg regtbl [x] [] in
     assert (uregmap = [] && uspls = []);
     Printf.fprintf oc "\tlw.s\t%%r31 %s 0\n" (lookup_regmap dregmap x);
     insert_save oc dregmap dspls; (* save*)
     false
  | StF(x, y, C(_)) -> out_sor oper [] [x; y]; false
  | StF(x, y, V(z)) ->
     let dregmap, uregmap, dspls, uspls = get_reg regtbl [] [y; z] in
     assert (dregmap = [] && dspls = []);
     insert_restore oc uregmap uspls; (* restore *)
     Printf.fprintf oc "\tadd\t%s %s %%r31\n"
       (lookup_regmap uregmap y) (lookup_regmap uregmap z);
     let dregmap, uregmap, dspls, uspls = get_reg regtbl [] [x] in
     assert (dregmap = [] && dspls = []);
     insert_restore oc uregmap uspls; (* storeするxをrestore *)
     Printf.fprintf oc "\tsw.s\t%%r31 %s 0\n" (lookup_regmap uregmap x);
     false
  | CallCls _ ->
     callcls_routine oc livenow_tbl regtbl instr
  | CallDir _ ->
     calldir_routine oc livenow_tbl regtbl instr
  | Entry _ ->
     entry_routine oc regtbl instr
  | Return((x, t)) ->
     (* Format.eprintf "^^^^^return val = %s : %s@." x
      *   (Id.id_of_typ t); *)
     (match lookup_alloc regtbl x with
      | Alloc(r) ->
         if t = Type.Float then
           (if r <> fregs.(0) then
              Printf.fprintf oc "\tmov.s\t%s %s\n" r fregs.(0))
         else
           (if r <> regs.(0) then
              Printf.fprintf oc "\tmov\t%s %s\n" r regs.(0))
      | Spill(t') ->
         if t = Type.Float && t' = Type.Float then
           (save x;
            insert_restore oc [(x, fregs.(0))] [(x, t)])
         else if t <> Type.Float && t' <> Type.Float then
           (save x;
            insert_restore oc [(x, regs.(0))] [(x, t)])
         else
           assert false);
     false
  | Save(x) -> (* これはループ前の変数の退避 *)
     save_sub x; (* ループ前退避用のテーブルに記録 *)
     let alloc = lookup_alloc regtbl x in
     (match alloc with
      | Alloc(r) ->
         if is_freg r then
           Printf.fprintf oc "\tsw.s\t%s %s %d\n" reg_sp r (get_offset_sub x)
         else
           Printf.fprintf oc "\tsw\t%s %s %d\n" reg_sp r (get_offset_sub x)
      | Spill(t) ->
         if t = Type.Float then
           (Printf.fprintf oc "\tlw.s\t%s %s %d\n" reg_sp freg_sub1
              (try get_offset x with Not_found -> assert false);
            Printf.fprintf oc "\tsw.s\t%s %s %d\n" reg_sp freg_sub1 (get_offset_sub x))
         else
           (Printf.fprintf oc "\tlw\t%s %s %d\n" reg_sp reg_sub1
              (try get_offset x with Not_found -> assert false);
            Printf.fprintf oc "\tsw\t%s %s %d\n" reg_sp reg_sub1 (get_offset_sub x)));
     false
  | Restore(x) -> (* ループ後の変数の復帰 *)
     let alloc = lookup_alloc regtbl x in
     (match alloc with
      | Alloc(r) ->
         if is_freg r then
           Printf.fprintf oc "\tlw.s\t%s %s %d\n" reg_sp r (get_offset_sub x)
         else
           Printf.fprintf oc "\tlw\t%s %s %d\n" reg_sp r (get_offset_sub x)
      | Spill(t) ->
         if t = Type.Float then
           (Printf.fprintf oc "\tsw.s\t%s %s %d\n" reg_sp freg_sub1 (get_offset_sub x);
            Printf.fprintf oc "\tlw.s\t%s %s %d\n" reg_sp freg_sub1
              (try get_offset x with Not_found -> assert false))
         else
           (Printf.fprintf oc "\tsw\t%s %s %d\n" reg_sp reg_sub1 (get_offset_sub x);
            Printf.fprintf oc "\tlw\t%s %s %d\n" reg_sp reg_sub1
              (try get_offset x with Not_found -> assert false)));
     remov_sub x; (* ループ前退避用のoffset tableの一番上をクリア *)
     false

and ofs_live_regs saves top =
  let new_top, savemap =
    List.fold_left
      (fun (ofs, acc) r ->
        (ofs + 4, (r, ofs) :: acc))
      (top, []) saves in
  new_top, savemap

and save_live_regs oc savemap =
  List.iter
    (fun (r, ofs) ->
      if is_freg r then
        Printf.fprintf oc "\tsw.s\t%s %s %d\n" reg_sp r ofs
      else
        Printf.fprintf oc "\tsw\t%s %s %d\n" reg_sp r ofs)
    savemap

and restore_live_regs oc savemap =
  List.iter
    (fun (r, ofs) ->
      if is_freg r then
        Printf.fprintf oc "\tlw.s\t%s %s %d\n" reg_sp r ofs
      else
        Printf.fprintf oc "\tlw\t%s %s %d\n" reg_sp r ofs)
    savemap

and make_int_argmap regtbl xs =
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
  let xrs = List.map (fun (x, _, r) -> save x; (x, r)) xsrs in
  rrs, xrs

and make_float_argmap regtbl xs =
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
  let xrs = List.map (fun (x, _, r) -> save x; (x, r)) xsrs in
  rrs, xrs

and insert_int_shuffle oc xys =
  List.iter
    (fun (x, y) -> Printf.fprintf oc "\tmov\t%s %s\n" x y)
    (shuffle reg_sub2 xys)

and insert_float_shuffle oc xys =
  List.iter
    (fun (x, y) -> Printf.fprintf oc "\tmov.s\t%s %s\n" x y)
    (shuffle freg_sub1 xys)
  
and insert_int_restore oc xrs =
  List.iter
    (fun (x, r) -> Printf.fprintf oc "\tlw\t%s %s %d\n" reg_sp r
                     (try get_offset x with Not_found -> assert false))
    xrs

and insert_float_restore oc xrs =
  List.iter
    (fun (x, r) -> Printf.fprintf oc "\tlw.s\t%s %s %d\n" reg_sp r
                     (try get_offset x with Not_found -> assert false))
    xrs

and insert_int_save oc xrs =
  List.iter
    (fun (x, r) -> Printf.fprintf oc "\tsw\t%s %s %d\n" reg_sp r
                     (try get_offset x with Not_found -> assert false))
    xrs

and insert_float_save oc xrs =
  List.iter
    (fun (x, r) -> Printf.fprintf oc "\tsw.s\t%s %s %d\n" reg_sp r
                     (try get_offset x with Not_found -> assert false))
    xrs

and align_args oc rrs xrs frrs fxrs =
  insert_int_shuffle oc rrs; (* レジスタに乗っている引数をシャッフル *)
  insert_int_restore oc xrs; (* 乗っていない引数をロード *)
  insert_float_shuffle oc frrs;
  insert_float_restore oc fxrs

and move_return_val oc regtbl x t =
  if t = Type.Float then
    (match lookup_alloc regtbl x with
     | Alloc(r) when r <> fregs.(0) ->
        Printf.fprintf oc "\tmov.s\t%s %s\n" fregs.(0) r
     | Alloc _ -> ()
     | Spill _ ->
        save x;
        Printf.fprintf oc "\tsw.s\t%s %s %d\n" reg_sp fregs.(0) (get_offset x))
  else
    (match lookup_alloc regtbl x with
     | Alloc(r) when r <> regs.(0) ->
        Printf.fprintf oc "\tmov\t%s %s\n" regs.(0) r
     | Alloc _ -> ()
     | Spill _ ->
        save x;
        Printf.fprintf oc "\tsw\t%s %s %d\n" reg_sp regs.(0) (get_offset x))
    
and callcls_routine oc livenow_tbl regtbl instr =
  let iid = instr.instr_id in
  let oper = instr.op in
  match oper with
  | CallCls((x, t), f, ys, zs) ->
     add_list_to_stackmap regtbl (x :: f :: (ys @ zs));
     let livenow = S.remove x (Lra.lookup_livenow livenow_tbl iid) in
     let is_tail = Lra.lookup_is_tail livenow_tbl iid in
       (* try H.find livenow_tbl iid with Not_found -> assert false in *)
     let livenow = S.elements livenow in
     let saves = List.concat (* 関数呼び出しに際してsaveが必要なregisters *)
                   (List.map
                      (fun x -> match lookup_alloc regtbl x with
                                | Alloc(r) -> [r]
                                | Spill _ -> [])
                      livenow) in
     let new_top, savemap = ofs_live_regs saves !stacktop in
     let rrs, xrs = make_int_argmap regtbl ys in
     let rrs, xrs = 
       (match lookup_alloc regtbl f with
        | Alloc(r) -> ((r, reg_cl) :: rrs), xrs
        | Spill _ -> save f; rrs, ((f, reg_cl) :: xrs)) in
     let frrs, fxrs = make_float_argmap regtbl zs in
     if is_tail then
       tail_callcls_routine oc rrs xrs frrs fxrs
     else
       (save_live_regs oc savemap;
        align_args oc rrs xrs frrs fxrs;
        Printf.fprintf oc "\tsw\t%s %s %d\n" reg_sp reg_ra new_top;
        Printf.fprintf oc "\tlw\t%s %s 0\n" reg_cl reg_sub1;
        Printf.fprintf oc "\taddi\t%s %s %d\n" reg_sp reg_sp (new_top + 4);
        Printf.fprintf oc "\tjalr\t%s\n" reg_sub1;
        Printf.fprintf oc "\taddi\t%s %s -%d\n" reg_sp reg_sp (new_top + 4);
        Printf.fprintf oc "\tlw\t%s %s %d\n" reg_sp reg_ra new_top;
        move_return_val oc regtbl x t;
        restore_live_regs oc savemap;
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
     add_list_to_stackmap regtbl (x :: (ys @ zs));
     let livenow = S.remove x (Lra.lookup_livenow livenow_tbl iid) in
     let is_tail = Lra.lookup_is_tail livenow_tbl iid in
       (* try H.find livenow_tbl iid with Not_found -> assert false in *)
     let livenow = S.elements livenow in
     let saves = List.concat
                   (List.map
                      (fun x -> match lookup_alloc regtbl x with
                                | Alloc(r) -> [r]
                                | Spill _ -> [])
                      livenow) in
     let new_top, savemap = ofs_live_regs saves !stacktop in
     let rrs, xrs = make_int_argmap regtbl ys in
     let frrs, fxrs = make_float_argmap regtbl zs in
     if is_tail then
       tail_calldir_routine oc l rrs xrs frrs fxrs
     else
       (save_live_regs oc savemap;
        align_args oc rrs xrs frrs fxrs;
        Printf.fprintf oc "\tsw\t%s %s %d\n" reg_sp reg_ra new_top;
        Printf.fprintf oc "\taddi\t%s %s %d\n" reg_sp reg_sp (new_top + 4);
        Printf.fprintf oc "\tjal\t%s\n" l;
        Printf.fprintf oc "\taddi\t%s %s -%d\n" reg_sp reg_sp (new_top + 4);
        Printf.fprintf oc "\tlw\t%s %s %d\n" reg_sp reg_ra new_top;
        move_return_val oc regtbl x t;
        restore_live_regs oc savemap;
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
        | Spill _ -> rrs, (save l; (l, reg_cl) :: xrs)) in
     let frrs, fxrs = make_float_argmap regtbl ys in
     let frrs = List.map (fun (x, y) -> (y, x)) frrs in
     insert_int_save oc xrs;
     insert_int_shuffle oc rrs;
     insert_float_save oc fxrs;
     insert_float_shuffle oc frrs;
     false
  | _ -> assert false

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

let is_call instr =
  match instr.op with
  | CallCls _ | CallDir _ -> true
  | _ -> false

let call_at_tail block =
  let code = block.code in
  if code = [] then false
  else
    is_call (List.hd (List.rev code))

let return_block block =
  match block.next with
  | End _ -> true
  | _ -> false

let unnecessary_return block =
  match block.next with
  | End prog_end when prog_end = false ->
     List.for_all call_at_tail block.prev
  | End _ -> false
  | _ -> assert false

let output_block oc livenow_tbl regtbl block =
  List.fold_left
    (fun _ instr -> output_instr oc livenow_tbl regtbl instr)
    false block.code

let is_done tbl block =
  let l = Cfg.label_of_block block in
  try
    H.find tbl l
  with
    Not_found -> H.add tbl l true; false

let stack_top_label stack =
  let _, block =
    try Stack.top stack with Stack.Empty -> assert false in
  Cfg.label_of_block block

let check_next oc livenow_tbl regtbl work_tbl block stack_bl stack_cf =
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
           Stack.push (false, b1) stack_bl) (* branchせずにまっすぐ降りた時にb1へ遷移 *)
        else
          assert false) 
     else
       (Printf.fprintf oc "\t%s\t%s %s %s\n" brnc (ulu x) (ulu y) l1;
        if is_not_done b1 && is_not_done b2 then
          (Stack.push (true, b1) stack_bl;
           Stack.push (false, b2) stack_bl) (* branchせずにまっすぐ降りた時にb2へ遷移 *)
        else
          assert false
       (* program_startからbranch後のブロックへは *)
         (* branching blockを経由しなければいけないはず...? *))
     (* (if is_not_done b1 then Stack.push (true, b1) stack);
      * if is_not_done b2 then
      *   (\* ここのfalseはわかりにくいので課題提出の際にはtrueにする *\)
      *   (\* Stack.push (false, b2) stack *\)
      *   Stack.push (true, b2) stack
      * else
      *   Printf.fprintf oc "\tj\t%s\n" l2 *)
  | Cnfl(bref) ->
     let b = !bref in
     let l = Cfg.label_of_block b in
     if is_not_done b then
       let push_stack = not (return_block b
                             && unnecessary_return b) in
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
       ()
  | Loop(bref, _) ->
     let b = !bref in
     (* let l = Cfg.label_of_block b in *)
     if is_not_done b then
       Stack.push (true, b) stack_bl
     else
       assert false (* program startからloop前ブロックを経由せずにループブロックへはいけない *)
  | Back(_, bref) ->
     let b = !bref in
     let l = Cfg.label_of_block b in
     (* (if is_not_done b then Stack.pop (true, b) stack); *)
     (if is_not_done b then assert false); (* jumpへはループブロックを経由しないと行けない *)
     Printf.fprintf oc "\tj\t%s\n" l
  | End (is_ret) ->
     if is_ret then
       (Printf.fprintf oc "\tadd\t%%r0 %%r0 %%r0\n";
        Printf.fprintf oc "\tret\n")
     else
       Printf.fprintf oc "\tretl\n"


let rec out_scan oc livenow_tbl regtbl work_tbl stack_bl stack_cf =
  if Stack.is_empty stack_bl && Stack.is_empty stack_cf then
    ()
  else if not (Stack.is_empty stack_bl) then
    let whether_print_label, block = Stack.pop stack_bl in
    (if whether_print_label then
       let l = label_of_block block in
       Printf.fprintf oc "%s :\n" l);
    check_next oc livenow_tbl regtbl work_tbl block stack_bl stack_cf;
    out_scan oc livenow_tbl regtbl work_tbl stack_bl stack_cf
  else (* stack_cf is not empty *)
    let whether_print_label, block = Stack.pop stack_cf in
    (if whether_print_label then
       let l = label_of_block block in
       Printf.fprintf oc "%s :\n" l);
    check_next oc livenow_tbl regtbl work_tbl block stack_bl stack_cf;
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
  List.iter
    (fun (Id.L(x), d') ->
      match d' with
      | F (d) ->
         Printf.fprintf oc "%s :\t# %f\n" x d;
         Printf.fprintf oc "\t.float\t0x%lx\n" (get d);
      | I (d) ->
         Printf.fprintf oc "%s :\t# %d\n" x d;
         Printf.fprintf oc "\t.int\t%d\n" d)
    data


let f : out_channel -> Asm2.prog -> Type.t -> unit =
  fun oc virtCode ty ->
  let (data, f_cfgs, cfg) = Cfg.f virtCode ty in
  arrange_data oc data;
  Printf.fprintf oc "#text_section\n";
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
