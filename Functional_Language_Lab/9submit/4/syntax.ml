open TySyntax
open ConstraintSolver

type name = string 

type pattern = PInt of int | PBool of bool
             | PVar of name
             | PPair of pattern * pattern
             | PNil | PCons of pattern * pattern


type expr =
  | EConstInt  of int
  | EConstBool of bool
  | EVar       of name 
  | EAdd       of expr * expr
  | ESub       of expr * expr
  | EMul       of expr * expr
  | EDiv       of expr * expr
  | EEq        of expr * expr
  | ELt        of expr * expr		 
  | EIf        of expr * expr * expr
  | ELet       of name * expr * expr
  | EFun       of name * expr
  | ERecFun    of name * name * expr
  | EApp       of expr * expr
  | ELetRec    of name * name * expr * expr
  | EPair      of expr * expr
  | ENil
  | ECons      of expr * expr
  | EMatch     of expr * (pattern * expr) list

type command =
  | CExp     of expr
  | CDecl    of name * expr
  | CRecDecl of name * name * expr



type constraints = (ty * ty) list

type tyenv = (name * ty_schema ) list

type value =
  | VInt  of int
  | VBool of bool
  | VFun  of name * expr * (name * thunk) list 
  | VRecFun of name * name * expr * env | VPair of value * value
  | VNil
  | VCons of value * value
  | VError of string
  and env = (name * thunk) list
  and thunk = Thunk of expr * env



let rec print_value v =
  match v with
  | VInt i  -> print_int i
  | VBool b -> print_string (string_of_bool b)
  | VFun (a,b,c) -> print_string ("<fun>")
  | VRecFun (a,b,c,d) -> print_string("<Rfun>")
  | VPair (a,b) -> Printf.printf "%s" "(";print_value(a);Printf.printf "%s" ","; print_value(b);Printf.printf "%s" ")";
  | VNil -> print_string("[]");
  | VCons (a,b) -> print_string("VCons");
  | VError (a) -> print_string (a)

				  
let print_name = print_string 

(*
 小さい式に対しては以下でも問題はないが，
 大きいサイズの式を見やすく表示したければ，Formatモジュール
   http://caml.inria.fr/pub/docs/manual-ocaml/libref/Format.html
 を活用すること
*)
let rec print_expr e =
  match e with
  | EConstInt i ->
     print_int i
  | EConstBool b ->
     print_string (string_of_bool b)
  | EVar x -> 
     print_name x
  | EAdd (e1,e2) -> 
     (print_string "EAdd (";
      print_expr e1;
      print_string ",";
      print_expr e2;
      print_string ")")
  | ESub (e1,e2) -> 
     (print_string "ESub (";
      print_expr e1;
      print_string ",";
      print_expr e2;
      print_string ")")
  | EMul (e1,e2) -> 
     (print_string "EMul (";
      print_expr e1;
      print_string ",";
      print_expr e2;
      print_string ")")
  | EDiv (e1,e2) -> 
     (print_string "EDiv (";
      print_expr e1;
      print_string ",";
      print_expr e2;
      print_string ")")
  | EEq (e1,e2) ->
     (print_string "EEq (";
      print_expr e1;
      print_string ",";
      print_expr e2;
      print_string ")")
  | ELt (e1, e2) ->
     (print_string "ELt (";
      print_expr e1;
      print_string ",";
      print_expr e2;
      print_string ")")
  | EIf (e1,e2,e3) ->
     (print_string "EIf (";
      print_expr   e1;
      print_string ","; 
      print_expr   e2;
      print_string ",";
      print_expr   e3;
      print_string ")")
  | ELet (x,e1,e2) ->
     (print_string ("ELet (" ^ x ^ ",");
      print_expr e1;
      print_string ",";
      print_expr e2;
      print_string ")")
  | EFun (x,e) ->
     (print_string ("EFun (" ^ x ^ ",");
      print_expr e;
      print_string ")")
  | EApp (e1,e2) ->
     (print_string "EApp (";
      print_expr e1;
      print_string ",";
      print_expr e2;
      print_string ")")
  | ELetRec (id,x,e1,e2) ->
     (print_string ("ELetRec (" ^ id ^ "," ^ x ^ ",");
      print_expr e1;
      print_string ",";
      print_expr e2;
      print_string ")")
  | EPair (e1, e2) ->
     (print_string "EPair (";
      print_expr e1;
      print_string ",";
      print_expr e2;
      print_string ")")
  | ENil ->
     print_string "ENil"
  | ECons (e1, e2) ->
     (print_string "ECons (";
      print_expr e1;
      print_string ",";
      print_expr e2;
      print_string ")")
  | _ -> ()
       
let rec print_command p =       
  match p with
  | CExp e -> print_expr e
  | CDecl (x,e) ->
     (print_string ("CDecl (" ^ x ^ ",");
      print_expr e;
      print_string ")")
  | CRecDecl (id,x,e) ->
     (print_string ("CRecDecl (" ^ id ^ "," ^ x ^ ",");
      print_expr e;
      print_string ")")

