(* customized version of Hashtbl *)

module H =
  Hashtbl.Make
    (struct
      type t = string
      let equal = (=)
      let hash = Hashtbl.hash
    end)
include H
