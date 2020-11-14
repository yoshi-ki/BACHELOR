open Enums
open Lra

type liverange = Id.t
               
type node_t = { tp : Type.t; deg : int; adjs : S.t }
  
type inter_graph = { mutable size : int; node_tbl : node_t H.t }

val print_graph : inter_graph -> unit
                 
val create_graph : int -> inter_graph

val graph_copy : inter_graph -> inter_graph
                 
val nodes_of_graph : inter_graph -> (liverange * Type.t) list
  
val deg_of_node : inter_graph -> liverange -> int

val adjs_of_node : inter_graph -> liverange -> S.t

val add_node : inter_graph -> liverange -> Type.t -> unit

val add_edge : inter_graph -> (liverange * Type.t) -> (liverange * Type.t) -> unit

val delete_node : inter_graph -> liverange -> unit

exception Not_colorable

val print_option : bool ref

val color_graph : inter_graph -> int -> int -> (liverange * Type.t) list ->
                  (liverange * Type.t) Stack.t * (liverange * Type.t) list
  
(* val color_graph : inter_graph -> int -> int -> (liverange * Type.t) Stack.t *)
