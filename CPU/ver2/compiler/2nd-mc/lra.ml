open Enums
open Cfg
type lr_info = { mutable name : Id.t; ty : Type.t;
                 mutable size : int; mutable set : S.t }

let new_lr_label _ = Id.genid "LR"

(* ir_i.setは等しくなければdisjointであることが保証される *)
let lr_info_union : lr_info -> lr_info -> lr_info * Id.t list =
  (* lr_info型の２つの値を受け取り，大きい方のlr_i1に２つを合成する *)
  (* 合成結果と更新が必要な変数のリストの組を返す *)
  fun lr_i1 lr_i2 ->
  if lr_i1 = lr_i2 then
    lr_i1, [] (* もともと同一ならunionの必要も更新の必要もない *)
  else
    (assert (S.is_empty (S.inter lr_i1.set lr_i2.set)); (* disjointかどうかを確認 *)
     assert (lr_i1.size >= lr_i2.size); (* 第一引数の.setのサイズの方が大きくなるように運用する *)
     (* cannot merge lrs of different classes of types *)
     assert ((lr_i1.ty = Type.Float && lr_i2.ty = Type.Float) ||
               (lr_i1.ty <> Type.Float && lr_i2.ty <> Type.Float));
     lr_i1.size <- lr_i1.size + lr_i2.size;
     lr_i1.set <- S.union lr_i1.set lr_i2.set;
     lr_i1, (S.elements lr_i2.set))

let make_lr_tbl n =
  let lr_tbl : lr_info H.t = H.create n in
  lr_tbl

let add_lr_tbl lr_tbl x t =
  if H.mem lr_tbl x then (* すでにあるなら足す必要はない *)
    ()
  else (* 新しく生存区間を作って表に加える *)
    (let lr_i = { name = new_lr_label (); ty = t;
                  size = 1; set = S.singleton x } in
     H.add lr_tbl x lr_i)


let union_lr lr_tbl x y = (* xとyの生存区間をmergeする *)
  let lr_ix, lr_iy = (* この関数を呼ぶ前にadd_lr_tbl x/yをしておく *)
    (try
       (H.find lr_tbl x), (H.find lr_tbl y)
     with
       Not_found ->
       Format.eprintf "%s or %s is not on the lr_tbl@." x y;
       assert false) in
  let lr_i, modify_list =
    (if lr_ix.size >= lr_iy.size then
       lr_info_union lr_ix lr_iy
     else
       lr_info_union lr_iy lr_ix) in
  List.iter
    (fun y -> H.replace lr_tbl y lr_i) modify_list

let merge_on_phi : lr_info H.t -> Id.t list -> unit =
  fun lrtbl ->
  function
  | x :: y :: zs ->
     let (a, b) = List.fold_left
               (fun (a, b) c -> union_lr lrtbl a b; (b, c))
               (x, y) zs in
     union_lr lrtbl a b
  | _ -> assert false

let merge_lr : lr_info H.t -> Cfg.instr -> unit =
  fun lrtbl instr ->
  match instr.op with
  | Phi (xt, yls) -> (* phi関数ではlive rangeをmergeする *)
     let xs = (fst xt) :: (List.map fst yls) in
     merge_on_phi lrtbl xs
  | _ -> () (* その他の命令のところでは何もしない *)

(* live range を定義から集める *)
let collect_lr_from_op : lr_info H.t -> S.t -> Cfg.instr -> S.t =
  fun lrtbl idset instr ->
  match instr.op with
  | Phi((x, t), _) -> add_lr_tbl lrtbl x t; S.add x idset
  | Nop -> idset
  | Set((x, t), _) -> add_lr_tbl lrtbl x t; S.add x idset
  | SetF((x, t), _) -> add_lr_tbl lrtbl x t; S.add x idset
  | SetL((x, t), _) -> add_lr_tbl lrtbl x t; S.add x idset
  | ILd((x, t), _) -> add_lr_tbl lrtbl x t; S.add x idset
  | Mov((x, t), _) -> add_lr_tbl lrtbl x t; S.add x idset
  | Neg((x, t), _) -> add_lr_tbl lrtbl x t; S.add x idset
  | Itof((x, t), _) -> add_lr_tbl lrtbl x t; S.add x idset
  | In((x, t)) -> add_lr_tbl lrtbl x t; S.add x idset
  | Fin((x, t)) -> add_lr_tbl lrtbl x t; S.add x idset
  | Out _ -> idset
  | AddI((x, t), _, _) -> add_lr_tbl lrtbl x t; S.add x idset
  | Add((x, t), _, _) -> add_lr_tbl lrtbl x t; S.add x idset
  | Sub((x, t), _, _) -> add_lr_tbl lrtbl x t; S.add x idset
  | Mul((x, t), _, _) -> add_lr_tbl lrtbl x t; S.add x idset
  | Div((x, t), _, _) -> add_lr_tbl lrtbl x t; S.add x idset
  | SLL((x, t), _, _) -> add_lr_tbl lrtbl x t; S.add x idset
  | SLLI((x, t), _, _) -> add_lr_tbl lrtbl x t; S.add x idset
  (* | SRL((x, t), _, _) -> add_lr_tbl lrtbl x t; S.add x idset *)
  | SRLI((x, t), _, _) -> add_lr_tbl lrtbl x t; S.add x idset
  | Ld((x, t), _, _) -> add_lr_tbl lrtbl x t; S.add x idset
  | St _ -> idset
  | FMov((x, t), _) -> add_lr_tbl lrtbl x t; S.add x idset
  | Ftoi((x, t), _) -> add_lr_tbl lrtbl x t; S.add x idset
  | FNeg((x, t), _) -> add_lr_tbl lrtbl x t; S.add x idset
  | Floor((x, t), _) -> add_lr_tbl lrtbl x t; S.add x idset
  | FSqrt((x, t), _) -> add_lr_tbl lrtbl x t; S.add x idset
  | FAdd((x, t), _, _) -> add_lr_tbl lrtbl x t; S.add x idset
  | FSub((x, t), _, _) -> add_lr_tbl lrtbl x t; S.add x idset
  | FMul((x, t), _, _) -> add_lr_tbl lrtbl x t; S.add x idset
  | FDiv((x, t), _, _) -> add_lr_tbl lrtbl x t; S.add x idset
  | LdF((x, t), _, _) -> add_lr_tbl lrtbl x t; S.add x idset
  | StF _ -> idset
  | CallCls((x, t), _, _, _) -> add_lr_tbl lrtbl x t; S.add x idset
  | CallDir((x, t), _, _, _) -> add_lr_tbl lrtbl x t; S.add x idset
  | Entry(l, xs, ys) ->
     let idset' =
     List.fold_left
       (fun acc x -> add_lr_tbl lrtbl x Type.Int; S.add x acc) idset (l :: xs) in
     List.fold_left
       (fun acc y -> add_lr_tbl lrtbl y Type.Float; S.add y acc) idset' ys
  | Return((x, t)) -> add_lr_tbl lrtbl x t; S.add x idset
  | Save _ -> idset
  | Restore _ -> idset

let collect_lr_of_block : lr_info H.t -> S.t -> Cfg.block -> S.t =
  fun lrtbl idset block ->
  let code = block.code in
  List.fold_left (collect_lr_from_op lrtbl) idset code

let merge_lr_on_block : lr_info H.t -> Cfg.block -> unit =
  fun lrtbl block ->
  let code = block.code in
  List.iter (merge_lr lrtbl) code

let lookup_lr lrtbl x =
  if Asm.is_reg x then x
  else
    (try
       let lr_i = H.find lrtbl x in
       lr_i.name
     with
       Not_found -> Format.eprintf "%s does not have lrname@." x;
                    assert false (* エラーはここで処理してしまう *))

(* 入力は!scan_mode = 0, !is_reverse = 0でscan_cfgを適用した結果のリスト *)
let blocklist_to_lrtbl : Cfg.block list -> lr_info H.t * S.t * S.t =
  fun blocklist ->
  let lrtbl = make_lr_tbl 50000 in
  let idset = List.fold_left (collect_lr_of_block lrtbl) S.empty blocklist in
  List.iter (merge_lr_on_block lrtbl) blocklist;
  let lrset = List.fold_left
               (fun acc x -> S.add (lookup_lr lrtbl x) acc) S.empty (S.elements idset) in
  lrtbl, idset, lrset



(* 以降はliveoutのデータフロー解析 *)



let defs_uses_of_instr : instr -> Id.t list * Id.t list =
  fun instr ->
  match instr.op with
  | Phi((x, t), yls) -> [x], (List.map fst yls)
     (* let ys = List.map fst yls in [x], ys *)
  | Nop -> [], []
  | Set((x, t), _) -> [x], []
  | SetF((x, t), _) -> [x], []
  | SetL((x, t), l) -> [x], []
  | ILd((x, t), l) -> [x], []
  | Mov((x, t), y) -> [x], [y]
  | Neg((x, t), y) -> [x], [y]
  | Itof((x, t), y) -> [x], [y]
  | In((x, t)) -> [x], []
  | Fin((x, t)) -> [x], []
  | Out (y) -> [], [y]
  | AddI((x, t), y, i) -> [x], [y]
  | Add((x, t), y, z) -> [x], [y; z]
  | Sub((x, t), y, z) -> [x], [y; z]
  | Mul((x, t), y, z) -> [x], [y; z]
  | Div((x, t), y, z) -> [x], [y; z]
  | SLL((x, t), y, z) -> [x], [y; z]
  | SLLI((x, t), y, i) -> [x], [y]
  (* | SRL((x, t), y, z) -> [x], [y; z] *)
  | SRLI((x, t), y, i) -> [x], [y]
  | Ld((x, t), y, i) -> [x], [y]
  | St(y, z, i) -> [], [y; z]
  | FMov((x, t), y) -> [x], [y]
  | Ftoi((x, t), y) -> [x], [y]
  | FNeg((x, t), y) -> [x], [y]
  | Floor((x, t), y) -> [x], [y]
  | FSqrt((x, t), y) -> [x], [y]
  | FAdd((x, t), y, z) -> [x], [y; z]
  | FSub((x, t), y, z) -> [x], [y; z]
  | FMul((x, t), y, z) -> [x], [y; z]
  | FDiv((x, t), y, z) -> [x], [y; z]
  | LdF((x, t), y, i) -> [x], [y]
  | StF(y, z, i) -> [], [y; z]
  | CallCls((x, t), f, ys, zs) -> [x], (f :: (ys @ zs))
  | CallDir((x, t), l, ys, zs) -> [x], (ys @ zs)
  | Entry(l, xs, ys) -> (l :: (xs @ ys)), []
  | Return((_, t)) when t = Type.Unit -> [], []
  | Return((x, t)) -> [], [x] (* 一見逆だけどこれが正しいはず *)
  | Save(x) -> [], []
  | Restore(x) -> [], []

let uses_of_branch : block -> Id.t list =
  fun block ->
  match block.next with
  | Brc (cmpr, _, _) ->
     let x, y = cmpr.args in [x; y]
  | _ -> []
  

type lra_sets_t = { mutable use : S.t; mutable kill : S.t; mutable liveout : S.t }

let make_lrasets _ =
  let lrasets = { use = S.empty; kill = S.empty; liveout = S.empty } in
  lrasets

let lrasets_of_block lratbl block =
  try
    H.find lratbl (Cfg.label_of_block block)
  with
    Not_found -> assert false

let update_use : Id.t list -> lra_sets_t -> unit =
  fun xs lrasets ->
  let xs' = List.filter (fun x -> not (S.mem x lrasets.kill)) xs in
  lrasets.use <- S.union (S.of_list xs') lrasets.use

let update_kill : Id.t list -> lra_sets_t -> unit =
  fun xs lrasets -> lrasets.kill <- S.union (S.of_list xs) lrasets.kill

let update_use_kill : lra_sets_t -> instr -> unit =
  fun lrasets instr ->
  let defs, uses = defs_uses_of_instr instr in
  update_use uses lrasets;
  update_kill defs lrasets

let setup_use_kill_of_block lratbl block = 
  let Id.L(l) = block.label in
  let lrasets = try H.find lratbl l with Not_found -> assert false in
  List.iter (update_use_kill lrasets) block.code;
  let uses_brnc = uses_of_branch block in
  update_use uses_brnc lrasets (* branchでのuseの情報を反映 *)

let setup_use_kill lratbl blocks =
  List.iter (setup_use_kill_of_block lratbl) blocks
  
let setup_lra : Cfg.block list -> lra_sets_t H.t =
  (* 順番は uevar, varkill, liveout の順 *)
  fun blocks ->
  let n = List.length blocks in
  let lratbl = H.create n in (* use, kill, liveoutの組を記録するテーブル *)
  List.iter
    (fun block ->
      let Id.L(l) = block.label in
      let lrasets = make_lrasets () in
      H.add lratbl l lrasets) blocks;
  setup_use_kill lratbl blocks;
  lratbl

let liveout_from_single_block : lra_sets_t -> S.t =
  fun lrasets ->
  S.union lrasets.use (S.diff lrasets.liveout lrasets.kill)
  
let compute_liveout : lra_sets_t list -> S.t =
  fun lrasets_list ->
  List.fold_left
    (fun acc lrasets ->
      S.union (liveout_from_single_block lrasets) acc)
    S.empty lrasets_list

let update_liveout lratbl block =
  (* let Id.L(l) = block.label in *)
  let lrasets = lrasets_of_block lratbl block in
  let next_lrasets_list =
    List.map (lrasets_of_block lratbl) (Cfg.next_blocks block) in
  let new_liveout = compute_liveout next_lrasets_list in
  if S.equal lrasets.liveout new_liveout then
    false
  else
    (lrasets.liveout <- new_liveout;
     true)

let dfa_of_liveout : block list -> lra_sets_t H.t =
  fun blocks ->
  let lratbl = setup_lra blocks in
  let changed = ref true in
  while !changed do
    changed := false;
    List.iter
      (fun block ->
        if update_liveout lratbl block then
          changed := true
        else
          ()) blocks
  done;
  lratbl


(* 以降はlivenowの計算に関係するもの *)
  


type instr_info_t = { livn : S.t; is_tl : bool }

let print_set set =
  let list = S.elements set in
  List.iter (Printf.printf "%s, ") list;
  print_string "\n"

let print_livenow livenow_tbl =
  H.iter (fun iid info ->
      Printf.printf "%s : " iid;
      print_set info.livn) livenow_tbl;
  print_string "\n"

(* functions to compute livenow of the instructions *)
let lookup_livenow : instr_info_t H.t -> Id.t -> S.t =
  fun livenow_tbl iid ->
  (try
     (H.find livenow_tbl iid).livn
   with
     Not_found -> assert false)

let lookup_is_tail : instr_info_t H.t -> Id.t -> bool =
  fun livenow_tbl iid ->
  (try
     (H.find livenow_tbl iid).is_tl
   with
     Not_found -> assert false)

let set_is_tl : instr_info_t H.t -> Cfg.instr -> bool -> unit =
  fun livenow_tbl instr is_tail ->
  let iid = instr.instr_id in
  if H.mem livenow_tbl iid then
    H.replace livenow_tbl iid
      { livn = lookup_livenow livenow_tbl iid ; is_tl = is_tail }
  else
    assert false
  
let make_livenow_tbl n =
  let livenow_tbl : instr_info_t H.t = H.create n in livenow_tbl

let compute_livenow : S.t -> Cfg.instr -> S.t =
  fun livenow instr ->
  let defs, uses = defs_uses_of_instr instr in
  S.union (S.of_list uses) (S.diff livenow (S.of_list defs))

let set_livenow_at_instr : instr_info_t H.t -> S.t -> Cfg.instr -> S.t =
  (* livenowを元にinstrの時点のlivenow集合を追加し *)
  (* １つ上の時点でのlivenow集合を返す *)
  fun livenow_tbl livenow instr ->
  assert (not (H.mem livenow_tbl instr.instr_id));
  (* let defs, uses = defs_uses_of_instr instr in *)
  (* let livenow = S.diff livenow (S.of_list defs) in *)
  H.add livenow_tbl instr.instr_id { livn = livenow; is_tl = false };
  (* (S.union (S.of_list uses) livenow) *)
  compute_livenow livenow instr

let build_livenow_tbl_of_block : lra_sets_t H.t -> instr_info_t H.t ->
                                 block -> unit =
  fun lra_tbl livenow_tbl block ->
  let lrasets = lrasets_of_block lra_tbl block in
  let rev_code = List.rev block.code in
  let uses_brnc = uses_of_branch block in
  let liveout = S.union lrasets.liveout (S.of_list uses_brnc) in
  let _ =
    List.fold_left
      (fun livenow instr -> set_livenow_at_instr livenow_tbl livenow instr)
      liveout rev_code in
  if rev_code <> [] then
    (let tail_instr = List.hd rev_code in
     match block.next with
     | Cnfl(br) ->
        (match !br.next with (* return blockへと合流するブロックの最後の命令が末尾命令 *)
         | End _ -> set_is_tl livenow_tbl tail_instr true
         | _ -> ())
     | _ -> ())
  else
    ()

let build_livenow_tbl_of_blocks : lra_sets_t H.t -> block list -> instr_info_t H.t =
  fun lra_tbl blocks ->
  let livenow_tbl = make_livenow_tbl (20 * (List.length blocks)) in
  List.iter
    (build_livenow_tbl_of_block lra_tbl livenow_tbl) blocks;
  livenow_tbl

