open KNormal
open SArray

type ofs_tbl_t = int H.t

let ofs_top = ref 0

let lookup ofs_tbl Id.L(label) = try H.find ofs_tbl label with assert false

let build_ofs_tbl : sarray list -> ofs_tbl_t =
  fun arrays ->
  let ofs_tbl : ofs_tbl_t =
    H.create (List.length arrays) in
  List.iter
    (function
     | CArr(Id.L(l), n, _) ->
        assert (not (H.mem ofs_tbl l));
        let ofs = !ofs_top in
        H.add ofs_tbl l ofs;
        ofs_top := ofs + 4 * n
     | LArr(Id.L(l1), n, Id.L(l2)) ->
        assert (not (H.mem ofs_tbl l1));
        assert (H.mem ofs_tbl l2); (* 必ずしも必要ではないが簡単のため *)
        let ofs = !ofs_top in
        H.add ofs_tbl l1 ofs;
        ofs_top := ofs + 4 * n)
    arrays;
  ofs_tbl
    
let setup_arrays  : out_channel -> ofs_tbl_t -> sarray list -> arrays_t =
  fun oc ofs_tbl arrays ->
  List.iter
    (function
     | CArr(_, n, cns) ->
        (match cns with
         | Int(i) ->
            Printf.fprintf oc "\taddi\t%%r0 %%r1 %d\n" n;
            Printf.fprintf oc "\taddi\t%%r0 %%r2 %d\n" i;
            Printf.fprintf oc "\tjal\tmin_caml_create_array\n"
         | Float(Id.L(l_f)) ->
            Printf.fprintf oc "\taddi\t%%r0 %%r1 %d\n" n;
            Printf.fprintf oc "\tilw.s\t%%r0 %%f0 %f\n" l_f;
            Printf.fprintf oc "\tjal\tmin_caml_create_float_array\n")
     | LArr(_, n, Id.(l)) ->
        let i = try H.find ofs_tbl l with Not_found = assert false in
        Printf.fprintf oc "\taddi\t%%r0 %%r1 %d\n" n;
        Printf.fprintf oc "\taddi\t%%r0 %%r2 %d\n" i;
        Printf.fprintf oc "\tjal\tmin_caml_create_array\n")
    arrays
