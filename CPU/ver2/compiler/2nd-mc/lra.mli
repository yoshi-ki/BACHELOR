open Enums
open Cfg

type lr_info = { mutable name : Id.t; ty : Type.t;
                 mutable size : int; mutable set : S.t }

val make_lr_tbl : int -> lr_info H.t

val lookup_lr : lr_info H.t -> Id.t -> Id.t

val add_lr_tbl : lr_info H.t -> Id.t -> Type.t -> unit

val union_lr : lr_info H.t -> Id.t -> Id.t -> unit

val blocklist_to_lrtbl : Cfg.block list -> lr_info H.t * S.t * S.t


type lra_sets_t = { mutable use : S.t;
                    mutable kill : S.t;
                    mutable liveout : S.t } 

val defs_uses_of_instr : instr -> Id.t list * Id.t list

val uses_of_branch : block -> Id.t list

val dfa_of_liveout : block list -> lra_sets_t H.t


type instr_info_t = { livn : S.t; is_tl : bool }

val print_livenow : instr_info_t H.t -> unit

val lookup_livenow : instr_info_t H.t -> Id.t -> S.t

val lookup_is_tail : instr_info_t H.t -> Id.t -> bool

val build_livenow_tbl_of_blocks : lra_sets_t H.t -> block list -> instr_info_t H.t
