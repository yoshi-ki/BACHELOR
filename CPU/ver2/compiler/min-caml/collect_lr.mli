module TarS : sig type t end
                     
val tar_list : Id.t list -> TarS.t -> Id.t list

val scale : int ref

type lr_status_t = { target : TarS.t; use_count : int; lifespan : S.t }

type lr_stat_tbl_t = lr_status_t H.t

val compute_score : lr_status_t -> int

val get_status : lr_stat_tbl_t -> Id.t -> lr_status_t

val make_stat_tbl : Cfg.block list -> lr_stat_tbl_t
