val print_lr_tbl : Lra.lr_info H.t -> unit

val print_option : bool ref

val build_igraph : Cfg.block list ->
                   Igraph.inter_graph * Lra.instr_info_t H.t *
                     Collect_lr.lr_stat_tbl_t
