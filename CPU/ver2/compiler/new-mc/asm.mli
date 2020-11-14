open Enums
(* open Mystub *)
(* type id_or_imm = V of Id.t | C of int *)
type data_t = I of int | F of float
type t =
  | Ans of exp
  | Let of (Id.t * Type.t) * exp * t
and exp =
  | Nop
  | Set of int
  | SetL of Id.l
  | ILd of Id.l
  | ILdF of Id.l
  | Mov of Id.t
  | Neg of Id.t
  | Itof of Id.t
  | In of Id.t
  | Fin of Id.t
  | Out of Id.t
  | AddI of Id.t * int
  | Add of Id.t * Id.t
  | Sub of Id.t * Id.t
  | Mul of Id.t * Id.t
  | Div of Id.t * Id.t
  | SLL of Id.t * Id.t
  | SLLI of Id.t * int
  | Ld of Id.t * int
  | St of Id.t * Id.t * int
  | FMov of Id.t
  | Ftoi of Id.t
  | FNeg of Id.t
  | Floor of Id.t
  | FSqrt of Id.t
  | FAdd of Id.t * Id.t
  | FSub of Id.t * Id.t
  | FMul of Id.t * Id.t
  | FDiv of Id.t * Id.t
  | LdF of Id.t * int
  | StF of Id.t * Id.t * int
  | Comment of string
  (* virtual instructions *)
  | If of cmp * Id.t * Id.t * t * t
  | FIf of cmp * Id.t * Id.t * t * t
  (* closure address, integer arguments, and float arguments *)
  | CallCls of Id.t * Id.t list * Id.t list
  | CallDir of Id.l * Id.t list * Id.t list
  | Save of Id.t * Id.t (* レジスタ変数の値をスタック変数へ保存 *)
  | Restore of Id.t (* スタック変数から値を復元 *)
type fundef = { name : Id.l; args : Id.t list; fargs : Id.t list; body : t; ret : Type.t }
type prog = Prog of MemAlloc.t list * (Id.l * data_t) list * fundef list * t

val fletd : Id.t * exp * t -> t (* shorthand of Let for float *)
val seq : exp * t -> t (* shorthand of Let for unit *)

val regs : Id.t array
val fregs : Id.t array
val allregs : Id.t list
val allfregs : Id.t list
val reg_cl : Id.t
val reg_sw : Id.t
val reg_fsw : Id.t
val reg_zero : Id.t
val reg_ra : Id.t
val reg_hp : Id.t
val reg_sp : Id.t
val reg_sub : Id.t
val is_reg : Id.t -> bool
val is_freg : Id.t -> bool
(* val co_freg : Id.t -> Id.t *)

val fv : t -> Id.t list
val concat : t -> Id.t * Type.t -> t -> t

val align : int -> int
