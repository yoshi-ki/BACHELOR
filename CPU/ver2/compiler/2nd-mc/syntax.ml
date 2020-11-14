type t = (* MinCamlの構文を表現するデータ型 (caml2html: syntax_t) *)
  | Unit
  | Bool of bool
  | Int of int
  | Float of float
  | Not of t
  | Neg of t
  | Itof of t
  | In of t
  | Fin of t
  | Out of t
  | Add of t * t
  | LSR of t * t
  | Sub of t * t
  | Mul of t * t
  | Div of t * t
  | FNeg of t
  | FSqrt of t
  | Floor of t
  | Ftoi of t
  | FAdd of t * t
  | FSub of t * t
  | FMul of t * t
  | FDiv of t * t
  | Eq of t * t
  | NE of t * t
  | LE of t * t
  | Lt of t * t
  | If of t * t * t
  | Let of (Id.t * Type.t) * t * t
  | Var of Id.t
  | LetRec of fundef * t
  | App of t * t list
  | Tuple of t list
  | LetTuple of (Id.t * Type.t) list * t * t
  | Array of t * t
  | Get of t * t
  | Put of t * t * t
and fundef = { name : Id.t * Type.t; args : (Id.t * Type.t) list; body : t }

let rec indent n =
  for i = 1 to n do
    Printf.printf "  "
  done

let rec print_fundef fundef =
  let (id,_) = fundef.name in
  let id_ty_lst = fundef.args in
  let body = fundef.body in 
  Id.print_id id;
  List.iter
    (fun (id,_) ->
       Printf.printf " ";
       Id.print_id id) id_ty_lst;
  Printf.printf " =\n";
  print_syntax body

and print_syntax =
  let depth = ref 0 in
  fun t ->
    indent !depth;
    match t with
    | Unit -> Printf.printf "UNIT\n"
    | Bool x ->
      if x then Printf.printf "BOOL true\n"
      else Printf.printf "BOOL false\n"
    | Int x -> Printf.printf "INT %d\n" x
    | Float x -> Printf.printf "FLOAT %f\n" x
    | Not s -> 
      Printf.printf "NOT\n";
      depth := !depth + 1;
      print_syntax s;
      depth := !depth - 1
    | Neg s -> 
      Printf.printf "NEG\n";
      depth := !depth + 1;
      print_syntax s;
      depth := !depth -1
    | Itof s -> 
      Printf.printf "ITOF\n";
      depth := !depth + 1;
      print_syntax s;
      depth := !depth -1
    | In s -> 
      Printf.printf "INPUT\n";
      depth := !depth + 1;
      print_syntax s;
      depth := !depth -1
    | Fin s -> 
      Printf.printf "FINPUT\n";
      depth := !depth + 1;
      print_syntax s;
      depth := !depth -1
    | Out s -> 
      Printf.printf "OUT\n";
      depth := !depth + 1;
      print_syntax s;
      depth := !depth -1
    | Add (s1,s2) ->
      Printf.printf "ADD\n";
      depth := !depth + 1;
      print_syntax s1;
      print_syntax s2;
      depth := !depth -1
    | LSR (s1,s2) ->
      Printf.printf "LSR\n";
      depth := !depth + 1;
      print_syntax s1;
      print_syntax s2;
      depth := !depth -1
    | Sub (s1,s2) ->
      Printf.printf "SUB\n";
      depth := !depth + 1;
      print_syntax s1;
      print_syntax s2;
      depth := !depth -1
    | Mul (s1,s2) ->
      Printf.printf "MUL\n";
      depth := !depth + 1;
      print_syntax s1;
      print_syntax s2;
      depth := !depth -1
    | Div (s1,s2) ->
      Printf.printf "DIV\n";
      depth := !depth + 1;
      print_syntax s1;
      print_syntax s2;
      depth := !depth -1
    | FNeg s -> 
      Printf.printf "FNEG\n";
      depth := !depth + 1;
      print_syntax s;
      depth := !depth -1
    | Ftoi s -> 
      Printf.printf "Ftoi\n";
      depth := !depth + 1;
      print_syntax s;
      depth := !depth -1
    | FSqrt s -> 
      Printf.printf "FSQRT\n";
      depth := !depth + 1;
      print_syntax s;
      depth := !depth -1
    | Floor s -> 
      Printf.printf "FLOOR\n";
      depth := !depth + 1;
      print_syntax s;
      depth := !depth -1 
    | FAdd (s1,s2) ->
      Printf.printf "FADD\n";
      depth := !depth + 1;
      print_syntax s1;
      print_syntax s2;
      depth := !depth -1
    | FSub (s1,s2) ->
      Printf.printf "FSUB\n";
      depth := !depth + 1;
      print_syntax s1;
      print_syntax s2;
      depth := !depth -1
    | FMul (s1,s2) ->
      Printf.printf "FMUL\n";
      depth := !depth + 1;
      print_syntax s1;
      print_syntax s2;
      depth := !depth -1
    | FDiv (s1,s2) ->
      Printf.printf "FDIV\n";
      depth := !depth + 1;
      print_syntax s1;
      print_syntax s2;
      depth := !depth -1
    | Eq (s1,s2) ->
      Printf.printf "EQ\n";
      depth := !depth + 1;
      print_syntax s1;
      print_syntax s2;
      depth := !depth -1
    | NE (s1,s2) ->
      Printf.printf "NE\n";
      depth := !depth + 1;
      print_syntax s1;
      print_syntax s2;
      depth := !depth -1
    | LE (s1,s2) ->
      Printf.printf "LE\n";
      depth := !depth + 1;
      print_syntax s1;
      print_syntax s2;
      depth := !depth -1
    | Lt (s1,s2) ->
      Printf.printf "Lt\n";
      depth := !depth + 1;
      print_syntax s1;
      print_syntax s2;
      depth := !depth -1
    | If (s1,s2,s3) ->
      Printf.printf "IF\n";
      depth := !depth + 1;
      print_syntax s1;
      print_syntax s2;
      print_syntax s3;
      depth := !depth - 1
    | Let ((id,ty),s1,s2) ->
      Printf.printf "LET ";
      Id.print_id id;
      Printf.printf " : ";
      Type.print_type ty;
      Printf.printf " =\n";
      depth := !depth + 1;
      print_syntax s1;
      depth := !depth - 1;
      indent !depth;
      Printf.printf "IN\n";
      depth := !depth + 1;
      print_syntax s2;
      depth := !depth - 1
    | Var id ->
      Printf.printf "VAR ";
      Id.print_id id;
      Printf.printf "\n"
    | LetRec (fundef, s) ->
      Printf.printf "LETREC ";
      depth := !depth + 1;
      print_fundef fundef;
      depth := !depth - 1;
      indent !depth;
      Printf.printf "IN\n";
      depth := !depth + 1;
      print_syntax s;
      depth := !depth - 1
    | App (s, ss) ->
      Printf.printf "APP\n";
      depth := !depth + 1;
      print_syntax s;
      List.iter print_syntax ss;
      depth := !depth -1
    | Tuple ss ->
      Printf.printf "TUPLE\n";
      depth := !depth + 1;
      List.iter print_syntax ss;
      depth := !depth - 1
    | Array (s1, s2) ->
      Printf.printf "ARRAY\n";
      depth := !depth + 1;
      print_syntax s1;
      print_syntax s2;
      depth := !depth - 1
    | Get (s1, s2) ->
      Printf.printf "GET\n";
      depth := !depth + 1;
      print_syntax s1;
      print_syntax s2;
      depth := !depth - 1
    | Put (s1,s2, s3) ->
      Printf.printf "PUT\n";
      depth := !depth + 1;
      print_syntax s1;
      print_syntax s2;
      print_syntax s3;
      depth := !depth - 1
    | LetTuple ((x,_)::xts, s1,s2) ->
      Printf.printf "LETTUPLE ";
      depth := !depth + 1;
      Printf.printf "(";
      Id.print_id x;
      List.iter
        (fun (x,_) ->
           Printf.printf ", ";
           Id.print_id x) xts;
      Printf.printf ") =\n";
      print_syntax s1;
      depth := !depth - 1;
      indent !depth;
      Printf.printf "IN\n";
      depth := !depth + 1;
      print_syntax s2;
      depth := !depth - 1
    | LetTuple (_, s1,s2) -> failwith "in syntax.ml: invalid invalid syntax with LetTuple"
                          
