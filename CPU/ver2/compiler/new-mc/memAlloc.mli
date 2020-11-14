open KNormal

type data_t = I of int | F of float | IL of Id.t | FL of Id.t

type t = A of Id.l * int * data_t | T of Id.l * data_t list

type meminfo_t = { addr : int; tp : Type.t }

type memtbl_t = meminfo_t H.t

val lookup_addr : memtbl_t -> Id.l -> int

val lookup_tp : memtbl_t -> Id.l -> Type.t

val f : out_channel -> sarray list -> memtbl_t * t list
