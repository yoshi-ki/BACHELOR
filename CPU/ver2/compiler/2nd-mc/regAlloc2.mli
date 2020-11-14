open Asm
open Enums
open Lra
open Lra2
open Igraph
open Collect_lr

type alloc_result = Alloc of Id.t | Spill of Type.t
type alloc_tbl_t = alloc_result H.t
                 
val lookup_alloc : alloc_tbl_t -> liverange -> alloc_result

val is_alloc : alloc_result -> bool

val alloced_reg : alloc_result -> Id.t

val f : lr_stat_tbl_t -> inter_graph -> alloc_tbl_t
