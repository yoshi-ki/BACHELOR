open KNormal

(* 最後の二つは命令に乗り切らない即値の解消のために後々使う *)
type data_t = I of int | F of float | IL of Id.t | FL of Id.t

type t = A of Id.l * int * data_t | T of Id.l * data_t list

type meminfo_t = { addr : int; tp : Type.t }

type memtbl_t = meminfo_t H.t

let addr_top = ref 0


let get_addr n =
  assert (n >= 0);
  let addr = !addr_top in
  addr_top := addr + 4 * n;
  addr


let record_mem memtbl l tp n =
  let Id.L(l) = l in
  assert (not (H.mem memtbl l));
  let addr = get_addr n in
  (* Format.eprintf "MemAlloc.record_mem : assign addres %d to pointer %s@." addr l; *)
  H.add memtbl l { addr = addr; tp = tp }


let lookup_addr memtbl l =
  let Id.L(l) = l in
  try
    (H.find memtbl l).addr
  with
    Not_found ->
    (* Format.eprintf "MemAlloc.lookup_addr : addres for label %s is not found@." l; *)
    assert false


let lookup_tp memtbl l =
  let Id.L(l) = l in
  try
    (H.find memtbl l).tp
  with
    Not_found -> assert false


let rec f : out_channel -> sarray list -> memtbl_t * t list =
  fun oc sarrs ->
  let memtbl : memtbl_t = H.create (List.length sarrs) in
  let rec_m = record_mem memtbl in
  let gc = get_const memtbl in
  let mem_arrays =
    List.fold_left
      (fun acc sa ->
        match sa with
        | SArr(l, n, cns) ->
           let cns, tp = gc cns in
           rec_m l (Type.Array(tp)) n;
           (A (l, n, cns)) :: acc
        | STpl(l, cnss) ->
           let n = List.length cnss in
           let cts = List.map gc cnss in
           let cnss, tps = List.split cts in
           let tp = Type.Tuple(tps) in
           rec_m l tp n;
           (T (l, cnss)) :: acc)
      [] sarrs in
  Format.eprintf "MemAlloc.f : heap top is %d@." !addr_top;
  H.iter
    (fun l { addr = addr } ->
      Printf.fprintf oc "%s : %d\n" l addr)
    memtbl;
  memtbl, List.rev mem_arrays

and get_const memtbl = function
  | KNormal.Int(i) -> I(i), Type.Int
  | KNormal.Float(f) -> F(f), Type.Float
  | KNormal.Ptr(l) -> I(lookup_addr memtbl l), lookup_tp memtbl l
