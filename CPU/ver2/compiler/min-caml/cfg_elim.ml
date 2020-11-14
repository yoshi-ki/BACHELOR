open Cfg
open Lra

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
  | _ -> assert false

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
