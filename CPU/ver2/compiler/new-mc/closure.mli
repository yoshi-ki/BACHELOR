open Enums
type closure = { entry : Id.l; actual_fv : Id.t list }
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
  | MakeCls of (Id.t * Type.t) * closure * t
  | AppCls of Id.t * Id.t list
  | AppDir of Id.l * Id.t list
  | Tuple of Id.t list
  | LetTuple of (Id.t * Type.t) list * Id.t * t
  | Get of Id.t * Id.t
  | GetL of Id.l * Id.t
  | Put of Id.t * Id.t * Id.t
  | PutL of Id.l * Id.t * Id.t
  | ExtArray of Id.l
and const = Int of int | Float of float | Ptr of Id.l
type fundef = { name : Id.l * Type.t;
                args : (Id.t * Type.t) list;
                formal_fv : (Id.t * Type.t) list;
                body : t }
type prog = Prog of fundef list * t

val fv : t -> S.t
val f : KNormal.t -> prog
