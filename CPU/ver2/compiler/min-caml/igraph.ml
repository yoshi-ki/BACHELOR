open Enums

type liverange = Id.t
(* adj_tblには同じ型のLRしか存在しないことが保証されていなければならない *)

type node_t = { tp : Type.t; deg : int ; adjs : S.t }

type inter_graph = { mutable size : int; node_tbl : node_t H.t }


let create_graph n = { size = 0; node_tbl = H.create n }
                   

let new_node tp deg adjs = (* nodeのコンストラクタ *)
  { tp = tp; deg = deg; adjs = adjs }
  
                 
let graph_copy : inter_graph -> inter_graph =
  fun graph -> { size = graph.size; node_tbl = H.copy graph.node_tbl }
             
                 
let nodes_of_graph : inter_graph -> (liverange * Type.t) list =
  (* 頂点のリストを返す *)
  fun graph ->
  H.fold (fun node info acc -> (node, info.tp) :: acc) graph.node_tbl []
  

let info_of_node : inter_graph -> liverange -> node_t =
  fun graph node ->
  try H.find graph.node_tbl node with Not_found -> assert false
                                                 
  
let deg_of_node : inter_graph -> liverange -> int =
  fun graph node ->
  try (H.find graph.node_tbl node).deg with Not_found -> assert false
                                                       

let adjs_of_node : inter_graph -> liverange -> S.t =
  fun graph node ->
  try (H.find graph.node_tbl node).adjs with Not_found -> assert false
                                                        

let tp_of_node : inter_graph -> liverange -> Type.t =
  fun graph node ->
  try (H.find graph.node_tbl node).tp with Not_found -> assert false


let print_set set =
  let list = S.elements set in
  List.iter (Printf.printf "%s, ") list;
  print_string "\n"
  

let print_graph graph =
  H.iter (fun x info ->
      Printf.printf "%s, %d : " x info.deg;
      Type.print_type info.tp;
      print_string " : ";
      print_set info.adjs) graph.node_tbl
  

let reset_deg : inter_graph -> liverange -> int -> unit =
  fun graph node deg ->
  try
    let info = H.find graph.node_tbl node in
    H.replace graph.node_tbl node
      (* degだけ更新する *)
      (new_node info.tp deg info.adjs)
  with
    Not_found -> assert false
               

let reset_adjs : inter_graph -> liverange -> S.t -> unit =
  fun graph node adjs ->
  try
    let info = H.find graph.node_tbl node in
    H.replace graph.node_tbl node
      (* adjsだけ更新する *)
      (new_node info.tp info.deg adjs)
  with
    Not_found -> assert false


let add_node : inter_graph -> liverange -> Type.t -> unit =
  fun graph node tp ->
  if H.mem graph.node_tbl node then () (* すでにnodeがある場合は何もしない *)
  else
    (graph.size <- graph.size + 1;
     H.add graph.node_tbl node (new_node tp 0 S.empty))
  

let incr_deg : inter_graph -> liverange -> unit =
  fun graph node ->
  (* try *)
    let d = deg_of_node graph node in
    reset_deg graph node (d + 1)
  (* with
   *   Not_found -> assert false *)
    

let decr_deg : inter_graph -> liverange -> unit =
  fun graph node ->
  (* try *)
    let d = deg_of_node graph node in
    reset_deg graph node (d - 1)
  (* with
   *   Not_found -> assert false *)
    

let addto_adjs : inter_graph -> liverange -> liverange -> unit =
  (* node1をnode2のadj_tblに加える *)
  (* node2のdeg_tblをincrement *)
  fun graph node1 node2 ->
  let tp1 = tp_of_node graph node1 in
  let tp2 = tp_of_node graph node2 in
  let adjs2 = adjs_of_node graph node2 in
  if not (S.mem node1 adjs2) then (* node1がnode2の隣接点でPないとき *)
    (assert (tp1 = tp2); (* 変は同じ型の頂点間に張られる *)
     reset_adjs graph node2 (S.add node1 adjs2);
     incr_deg graph node2 (* increase deg of node2 by 1 *))
  

let remvfrm_adjs : inter_graph -> liverange -> liverange -> unit =
  (* ndoe1をnode2のadj_tblから削除 *)
  (* node2のdeg_tblをdecrement *)
  fun graph node1 node2 ->
  let tp1 = tp_of_node graph node1 in
  let tp2 = tp_of_node graph node2 in
  let adjs2 = adjs_of_node graph node2 in
  assert (tp1 = tp2);
  reset_adjs graph node2 (S.remove node1 adjs2);
  decr_deg graph node2
  

let add_edge : inter_graph -> liverange * Type.t ->
               liverange * Type.t -> unit =
  fun graph (node1, tp1) (node2, tp2) ->
  assert (tp1 = tp2);
  if node1 <> node2 then (* 単純辺のみ加える．assertはしない *)
    (add_node graph node1 tp1; (* グラフにまだnodeがなければ加える *)
     add_node graph node2 tp2;
     addto_adjs graph node1 node2; (* node1, node2間に辺を張る *)
     addto_adjs graph node2 node1) (* すでに辺がある場合はaddto_adjsは辺を張らない *)
  

let delete_node : inter_graph -> liverange -> unit =
  fun graph node ->
  (* nodeがすでにグラフにあるかどうかの確認 *)
  assert (H.mem graph.node_tbl node);
  let adjs = adjs_of_node graph node in
  (* let adjs, _ = adjs_of_node graph node in *)
  let adjs_list = S.elements adjs in (* the list of nodes adjacent to "node" *)
  List.iter (remvfrm_adjs graph node) adjs_list;
  H.remove graph.node_tbl node;
  graph.size <- graph.size - 1
  

let search_colorable_node : inter_graph -> int -> int -> liverange * Type.t =
  fun graph imax fmax ->
  let nts = nodes_of_graph graph in
  List.find
    (fun (node, tp) ->
      let deg = deg_of_node graph node in
      match tp with
      | Type.Float -> deg < fmax
      | _ -> deg < imax)
    nts
  

exception Not_colorable


let rec choose_spill : node_t H.t -> (liverange * Type.t) list ->
                       (liverange * Type.t) * (liverange * Type.t) list =
  fun node_tbl spill_rank_list ->
  match spill_rank_list with
  | (l, t) :: lts -> if H.mem node_tbl l then (l, t), lts
                     else choose_spill node_tbl lts
  | [] -> assert false (* グラフが空でなければこれはあり得ない *)


let print_option = ref false
        

let rec color_graph : inter_graph -> int -> int -> (liverange * Type.t) list ->
                  (liverange * Type.t) Stack.t * (liverange * Type.t) list =
  fun graph imax fmax spill_rank_list ->
  let stack = Stack.create () in
  let dup_graph = graph_copy graph in
  Format.eprintf "ready to enter while loop of Igraph.color_graph@.";
  color_routine stack [] graph dup_graph imax fmax spill_rank_list

and color_routine =
  fun stack spls graph dup_graph imax fmax spill_rank_list ->
  if dup_graph.size = 0 then
    stack, spls
  else
    (try
       let lr, tp = search_colorable_node dup_graph imax fmax in
       Format.eprintf "node %s is colorable@." lr;
       Stack.push (lr, tp) stack;
       delete_node dup_graph lr;
       (if !print_option then
          (print_string "--------------\n";
           Printf.printf "color %s\n" lr;
           print_graph dup_graph;
           print_string "--------------\n"));
       color_routine stack spls graph
         dup_graph imax fmax spill_rank_list
     with
       Not_found ->
       let (lr, tp), srl = choose_spill dup_graph.node_tbl spill_rank_list in
       Format.eprintf "spill live range : %s@." lr;
       delete_node graph lr; (* spillするので元の干渉グラフからもnodeを消す *)
       delete_node dup_graph lr;
       (if !print_option then
          (print_string "--------------\n";
           Printf.printf "spill %s\n" lr;
           print_graph dup_graph;
           print_string "--------------\n"));
       color_routine stack ((lr, tp) :: spls)
         graph dup_graph imax fmax srl)
    (* (
     *  let stack, spls, graph, dup_graph, srl = 
     *    (try
     *       let lr, tp = search_colorable_node dup_graph imax fmax in
     *       Format.eprintf "node %s is colorable@." lr;
     *       Stack.push (lr, tp) stack;
     *       delete_node dup_graph lr;
     *       print_string "-----------\n";
     *       Printf.printf "color %s\n" lr;
     *       print_graph dup_graph;
     *       print_string "------------\n";
     *       stack, spls, graph, dup_graph, spill_rank_list
     *     with
     *       Not_found ->
     *       let (lr, tp), srl = choose_spill dup_graph.node_tbl spill_rank_list in
     *       Format.eprintf "spill live range : %s@." lr;
     *       delete_node graph lr; (\* spillするので元の干渉グラフからも消す *\)
     *       delete_node dup_graph lr;
     *       print_string "-----------\n";
     *       Printf.printf "spill %s\n" lr;
     *       print_graph dup_graph;
     *       print_string "------------\n";
     *       stack, ((lr, tp) :: spls), graph, dup_graph, srl) in
     *  color_routine stack spls graph dup_graph imax fmax srl) *)
