open Cfg
open Lra

let eliminate_useless_code livenow_tbl code =
  List.filter
    (fun instr ->
      let iid = instr.instr_id in
      let oper = instr.op in
      match oper with
      | Phi _ | Nop | Fin _ | In _ | Out _
        | St _ | StF _ | CallCls _ | CallDir _
        | Entry _ | Save _ | Restore _ -> true
      | Return(_, t) when t = Type.Unit -> false
      | Return _ -> true
      | _ -> let defs, _ = defs_uses_of_instr instr in
             let livenow = lookup_livenow livenow_tbl iid in
             let x = match defs with [x] -> x | _ -> assert false in
             Asm.is_reg x || S.mem x livenow)
    code

let f livenow_tbl cfg =
  List.iter
    (fun block ->
      let code = eliminate_useless_code livenow_tbl block.code in
      block.code <- code)
  cfg
  

let collect_useless_save livenow_tbl block =
  let code = block.code in
  match code with
  | i1 :: i2 :: _ ->
     (match i1.op with
     | Nop ->
        let livenow = lookup_livenow livenow_tbl i1.instr_id in
        livenow
        (* (match i2.op with
         *  | Phi((x, _), _) ->
         *     S.remove x livenow
         *  | _ -> assert false) *)
     | _ -> assert false)
  | _ ->
     Cfg_db.print_block block;
     assert false

let eliminate_saves_restores livenow_tbl block =
  match block.next with
  | Loop(_, br) ->
     let postloop = !br in
     let livenow = collect_useless_save livenow_tbl postloop in
     let _, code1 =
       List.partition
         (fun instr -> match instr.op with (* この判定でfalseになる命令を残す *)
                       | Save(x) -> not (S.mem x livenow)
                       | _ -> false)
         block.code in
     block.code <- code1;
     let _, code2 =
       List.partition
         (fun instr -> match instr.op with
                       | Restore(x) -> not (S.mem x livenow)
                       | _ -> false)
         postloop.code in
     postloop.code <- code2
  | _ -> ()

let elim_save livenow_tbl cfg =
  List.iter
    (eliminate_saves_restores livenow_tbl) cfg
