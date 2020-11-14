type t = (* MinCaml�η���ɽ������ǡ����� (caml2html: type_t) *)
  | Unit
  | Bool
  | Int
  | Float
  | Fun of t list * t (* arguments are uncurried *)
  | Tuple of t list
  | Array of t
  | Var of t option ref

let rec print_type ty =
  match ty with
  | Unit -> Printf.printf "Unit"
  | Bool -> Printf.printf "Bool"
  | Int -> Printf.printf "Int"
  | Float -> Printf.printf "Float"
  | Fun ([],_) -> ()
  | Fun ((arg::args),s) ->
    Printf.printf "(";
    print_type arg;
    List.iter
      (fun x ->
         Printf.printf " * ";
         print_type x) args;
    Printf.printf " -> ";
    print_type s;
    Printf.printf ")"
  | Tuple [] -> ()
  | Tuple (s::ss) ->
    Printf.printf "(";
    print_type s;
    List.iter
      (fun x ->
         Printf.printf " * ";
         print_type x) ss;
    Printf.printf ")"
  | Array s ->
    Printf.printf "(";
    print_type s;
    Printf.printf ")";
    Printf.printf " Array"
  | Var _ ->
    Printf.printf "Var"

let gentyp () = Var(ref None) (* ���������ѿ����� *)
