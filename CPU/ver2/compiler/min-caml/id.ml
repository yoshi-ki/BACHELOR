type t = string (* 変数の名前 (caml2html: id_t) *)
type l = L of string (* トップレベル関数やグローバル配列のラベル (caml2html: id_l) *)

let print_id id = print_string id

let rec pp_list = function
  | [] -> ""
  | [x] -> x
  | x :: xs -> x ^ " " ^ pp_list xs

let counter = ref 0
(* let genid s =
 *  incr counter;
 *  let s =
 *    (match Str.split (Str.regexp "\\.") s with
 *     | x::_ -> x
 *     | _ -> assert false) in
 *  Printf.sprintf "%s.%d" s !counter *)
let get_body s = (match Str.split (Str.regexp "\\.") s with
                     | x :: _ -> x
                     | _ -> assert false)
let idtbl = H.create 50000 (* idtblには各変数につき次に割り当て可能な整数が格納されている *)
let genid s =
  let s = get_body s in
  (* let s = (match Str.split (Str.regexp "\\.") s with
   *          | x::_ -> x
   *          | _ -> assert false) in *)
  try
    let n = H.find idtbl s in
    (* (if s = "branching_b" then Format.eprintf "%d@." n); *)
    H.replace idtbl s (n+1);
    Printf.sprintf "%s.%d" s n
  with
    Not_found -> H.add idtbl s 1; Printf.sprintf "%s.%d" s 0

let is_utmp x =
  x.[0] = 'T' && x.[1] = 'u'

let rec id_of_typ = function
  | Type.Unit -> "u"
  | Type.Bool -> "b"
  | Type.Int -> "i"
  | Type.Float -> "d"
  | Type.Fun _ -> "f"
  | Type.Tuple _ -> "t"
  | Type.Array _ -> "a" 
  | Type.Var _ -> assert false
(* let gentmp typ =
 *   incr counter;
 *   Printf.sprintf "T%s%d" (id_of_typ typ) !counter *)
let gentmp typ =
  let id = id_of_typ typ in
  try
    let n = H.find idtbl id in
    H.replace idtbl id (n+1);
    Printf.sprintf "T%s.%d" id n
  with
    Not_found -> H.add idtbl id 1; Printf.sprintf "T%s.%d" id 0
