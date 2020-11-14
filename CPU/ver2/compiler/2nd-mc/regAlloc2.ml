open Asm
open Enums
open Lra
open Lra2
open Igraph
open Collect_lr

type alloc_result = Alloc of Id.t | Spill of Type.t
type alloc_tbl_t = alloc_result H.t

let lookup_alloc regtbl lr =
  try
    H.find regtbl lr
  with
    Not_found ->
    Format.eprintf "variable %s is not on the alloc table@." lr;
    assert false

let is_alloc alloc =
  match alloc with Alloc _ -> true | Spill _ -> false

let alloced_reg alloc =
  match alloc with Alloc (r) -> r | Spill _ -> assert false

let add_reg : alloc_tbl_t -> Id.t -> Id.t -> unit =
  fun regtbl x r ->
  assert (not (H.mem regtbl x));
  H.add regtbl x (Alloc (r))

let add_spill : alloc_tbl_t -> Id.t * Type.t -> unit =
  fun regtbl (x, t) ->
  assert (not (H.mem regtbl x));
  H.add regtbl x (Spill (t))

(* liverangeの集合を取りそれに割付られているレジスタのリストを返す *)
let make_reg_list : alloc_tbl_t -> S.t -> Id.t list =
  fun regtbl lr_set ->
  let lr_list = S.elements lr_set in
  List.map
    (fun lr ->
      match lookup_alloc regtbl lr with
      | Alloc (r) -> r
      | Spill _ -> assert false)
    lr_list

(* これを書き換えてcoalescingする *)
let choose_reg regtbl adjs stat_tbl allregs regs lr =
  if Asm.is_reg lr then lr
  else
    (let targets = tar_list allregs (get_status stat_tbl lr).target in
     let targets = List.concat
                     (List.map
                        (fun x -> if is_reg x && not (S.mem x adjs) then [x] else
                          if H.mem regtbl x && not (S.mem x adjs) then
                            (match lookup_alloc regtbl x with
                             | Alloc(r) -> [r] | _ -> [])
                          else
                            [])
                        (List.filter (fun x -> x <> "%r0") targets)) in
     try
       List.find (fun r -> not (List.mem r regs)) targets
     with
       Not_found ->
       (try
          List.find (fun r -> not (List.mem r regs)) allregs
        with
          Not_found -> assert false))

let assign_lr : alloc_tbl_t -> lr_stat_tbl_t -> inter_graph ->
                (liverange * Type.t) Stack.t -> Id.t list -> Id.t list ->
                unit =
  fun regtbl stat_tbl graph stack allregs fallregs ->
  let allocated = ref [] in
  while not (Stack.is_empty stack) do
    let lr, ty = Stack.pop stack in
    let adjs = adjs_of_node graph lr in
    (* すでに割り付けたLRと干渉グラフ中で接続するLRの共通部分 *)
    let adjs' = S.inter adjs (S.of_list !allocated) in
    let regs = make_reg_list regtbl adjs' in
    let reg = (match ty with
               | Type.Float -> choose_reg regtbl adjs stat_tbl fallregs regs lr
               | _ -> choose_reg regtbl adjs stat_tbl allregs regs lr) in
    (* Format.eprintf "assign register %s to live range %s@." reg lr; *)
    if !Lra2.print_option then
      Printf.printf "assign register %s to live range %s\n" reg lr;
    add_reg regtbl lr reg;
    allocated := lr :: !allocated
  done

     
let f : lr_stat_tbl_t -> inter_graph -> alloc_tbl_t =
  fun stat_tbl graph ->
  let allregs = Array.to_list Asm.regs in
  let fallregs = Array.to_list Asm.fregs in
  let regtbl : alloc_tbl_t = H.create graph.size in
  let spill_rank_list =
    (* spill_rank_listの順番を調節してspill strategyを変更 *)
    List.sort
      (fun (x, _) (y, _) -> compare
                    (compute_score (get_status stat_tbl x))
                    (compute_score (get_status stat_tbl y)))
    (nodes_of_graph graph) in
  let imax = List.length allregs in
  let fmax = List.length fallregs in
  Format.eprintf "setup completed in RegAlloc.f@.";
  (* let stack = spill_lr regtbl graph spill_rank_list imax fmax in *)
  let stack, spls = color_graph graph imax fmax spill_rank_list in
  (* spillしたnodeをregtblに記録する *)
  List.iter (add_spill regtbl) spls;
  assign_lr regtbl stat_tbl graph stack allregs fallregs;
  regtbl
