open Enums
type t =
  | Unit
  | Const of const
  (* | Int of int
   * | Float of float *)
  | Neg of Id.t
  | Itof of Id.t
  | In of Id.t
  | Fin of Id.t
  | Out of Id.t
  | Add of Id.t * Id.t
  | LSR of Id.t * Id.t
  | Sub of Id.t * Id.t
  | Mul of Id.t * Id.t
  | Div of Id.t * Id.t
  | FNeg of Id.t
  | Ftoi of Id.t
  | FSqrt of Id.t
  | Floor of Id.t
  | FAdd of Id.t * Id.t
  | FSub of Id.t * Id.t
  | FMul of Id.t * Id.t
  | FDiv of Id.t * Id.t
  | If of cmp * Id.t * Id.t * t * t
  | Let of (Id.t * Type.t) * t * t
  | Var of Id.t
  | LetRec of fundef * t
  | App of Id.t * Id.t list
  | Tuple of Id.t list
  | LetTuple of (Id.t * Type.t) list * Id.t * t
  | Get of Id.t * Id.t
  | GetL of Id.l * Id.t
  | Put of Id.t * Id.t * Id.t
  | PutL of Id.l * Id.t * Id.t
  | Loop of Id.l * ((Id.t * Type.t) list) * Id.t list * t
  | Jump of (Id.t * Id.t * Type.t) list * Id.l
  | ExtArray of Id.t
  | ExtFunApp of Id.t * Id.t list
and const = Int of int | Float of float | Ptr of Id.l
and fundef = { name : Id.t * Type.t; args : (Id.t * Type.t) list; body : t }
type sarray = SArr of Id.l * int * const | STpl of Id.l * const list


val print_sarray : sarray -> unit
val print_const : const -> unit
val label_of_sarray : sarray -> Id.l
val lookup_sarray : sarray list -> Id.l -> sarray
val print_kNormal : t -> unit
val fv : t -> S.t
val f : Syntax.t -> t
