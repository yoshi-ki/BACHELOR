(* ループ化したIR, LNormal.tを機械語に近い形式に変換するためのデータ型 *)
(* asm.mlがベース  *)
(* SPARC assembly with a few virtual instructions *)
open Enums
type id_or_imm = V of Id.t | C of int
type data_t = I of int | F of float
type t = (* 命令の列 (caml2html: sparcasm_t) *)
  | Ans of exp
  | Let of (Id.t * Type.t) * exp * t
and exp = (* 一つ一つの命令に対応する式 (caml2html: sparcasm_exp) *)
  | Nop
  | Set of int
  | SetL of Id.l
  | ILd of Id.l
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
  | Ld of Id.t * id_or_imm
  | St of Id.t * Id.t * id_or_imm
  | FMov of Id.t
  | Ftoi of Id.t
  | FNeg of Id.t
  | Floor of Id.t
  | FSqrt of Id.t
  | FAdd of Id.t * Id.t
  | FSub of Id.t * Id.t
  | FMul of Id.t * Id.t
  | FDiv of Id.t * Id.t  
  | LdF of Id.t * id_or_imm
  | StF of Id.t * Id.t * id_or_imm
  | Comment of string
  (* virtual instructions *)
  | If of cmp * Id.t * Id.t * t * t (* これはブロックを生成する必要がある *)
  | FIf of cmp * Id.t * Id.t * t * t (* 上に同じ *)
  | Loop of Id.l * ((Id.t * Type.t) list) * (Id.t list) * t (* ブロックを生成 *)
  (* Loopには変数定義の機能がある!! *)
  (* レジスタ割り付けなどでこれを考慮することを忘れない!! *)
  | Jump of (Id.t * Id.t * Type.t) list * Id.l (* JumpとSubstを統合した *)
  (* closure address, integer arguments, and float arguments *)
  | CallCls of Id.t * Id.t list * Id.t list (* これはブロック内でどういう命令なのか *)
  | CallDir of Id.l * Id.t list * Id.t list
  | Save of Id.t (* save, restoreはループの前後に用いる *)
  | Restore of Id.t (* スタック変数から値を復元 (caml2html: sparcasm_restore) *)
type fundef = { name : Id.l; args : Id.t list; fargs : Id.t list; body : t; ret : Type.t }
(* プログラム全体 = 浮動小数点数 & 大きな整数テーブル + トップレベル関数 + メインの式 (caml2html: sparcasm_prog) *)
type prog = Prog of (Id.l * data_t) list * fundef list * t

(* 以下の2関数ではe1はAsm2.exp型，e2はAsm2.t型であることに注意 *)
let fletd(x, e1, e2) = Let((x, Type.Float), e1, e2) (* e1をfloat変数xに束縛してe2を実行 *)
let seq(e1, e2) = Let((Id.gentmp Type.Unit, Type.Unit), e1, e2) (* Unit型の変数への束縛の形でe1とe2を継続 *)

let regs = (* Array.init 16 (fun i -> Printf.sprintf "%%r%d" i) *)
  (* [|"%r1"; "%r2"; "%r3"|] *)
    (* [|"%r1"; "%r2"; "%r3"; "%r4";
     *  "%r5"; "%r6"; "%r7"|] *)
  [|"%r1"; "%r2"; "%r3"; "%r4";
     "%r5"; "%r6"; "%r7"; "%r8"; "%r9"; "%r10"; "%r11"; "%r12";
     "%r13"; "%r14"; "%r15"; "%r16"; "%r17"; "%r18";
     "%r19"; "%r20"; "%r21"; "%r22"; "%r23"; "%r24"; "%r25"; "%r29"|]
(* %r23は即値のsetなどに使う *)
let fregs = Array.init 30 (fun i -> Printf.sprintf "%%f%d" i)
let allregs = Array.to_list regs
let allfregs = Array.to_list fregs
let reg_sub1 = "%r30"
let reg_sub2 = "%r31"
let freg_sub1 = "%f30"
let freg_sub2 = "%f31"
let reg_cl = regs.(Array.length regs - 1) (* closure address (caml2html: sparcasm_regcl) *) 
(* let reg_sw = regs.(Array.length regs - 2) (\* temporary for swap *\) (\* これemitとかで使っていいのでは？ *\) *)
let reg_fsw = fregs.(Array.length fregs - 1) (* temporary for swap *) (* これも．ssaとかでも使えそう *)
let reg_sp = "%r26" (* stack pointer *)
let reg_hp = "%r27" (* heap pointer (caml2html: sparcasm_reghp) *)
let reg_ra = "%r28" (* return address *)
let is_reg x = (x.[0] = '%')
let is_freg r = (is_reg r && r.[1] = 'f')

(* super-tenuki *)
(* リストysから集合xsの要素を除きつつ，重複のないリストにして返す *)
let rec remove_and_uniq xs = function
  | [] -> []
  | x :: ys when S.mem x xs -> remove_and_uniq xs ys (* リストysからxsの要素を除く *)
  | x :: ys -> x :: remove_and_uniq (S.add x xs) ys (* リストysから要素の重複を除く *)

(* free variables in the order of use (for spilling) (caml2html: sparcasm_fv) *)
let fv_id_or_imm = function V(x) -> [x] | _ -> []
let rec fv_exp = function
  | Nop | Set(_) | SetL(_) | Comment(_) | Restore(_) | ILd _ -> []
  | Mov(x) | Neg(x) | Itof(x) | In(x) | Fin(x) | Out(x) | FMov(x) | Ftoi(x) | FNeg(x)
    | FSqrt(x) | Floor(x) | Save(x) | AddI(x,_) | SLLI(x,_) -> [x]
  | Ld(x, y') | LdF(x, y') -> x :: fv_id_or_imm y'
  | St(x, y, z') | StF(x, y, z') -> x :: y :: fv_id_or_imm z'
  | Add(x, y) | Sub(x, y) | Mul(x, y) | Div(x, y) | SLL(x, y)
    | FAdd(x, y) | FSub(x, y) | FMul(x, y) | FDiv(x, y) -> [x; y]
  | If(_,x,y,e1,e2) | FIf(_,x,y,e1,e2)
    -> x :: y :: remove_and_uniq S.empty (fv e1 @ fv e2) (* uniq here just for efficiency *)
  | Loop(_,yts,zs,e) -> zs @ remove_and_uniq (S.of_list (List.map fst yts)) (fv e)
  | Jump(yzts,_) -> remove_and_uniq S.empty
                      (List.fold_right
                         (fun (y, z, t) acc -> z :: y :: acc)
                         yzts [])
  | CallCls(x, ys, zs) -> x :: ys @ zs
  | CallDir(_, ys, zs) -> ys @ zs
and fv = function
  | Ans(exp) -> fv_exp exp
  | Let((x, t), exp, e) ->
     fv_exp exp @ remove_and_uniq (S.singleton x) (fv e)
let fv e = remove_and_uniq S.empty (fv e)

(* e1の最後のAnsをxtに束縛してe2を実行するプログラムに変換 *)
(* 実際は木のマウント *)
(* 逆に，Loopの末端で値でないものは連続したSubstとJumpになっているはず *)
let rec concat e1 xt e2 =
  match e1 with
  (* JumpはLoopのbody中にしかないのだから， *)
  (* うまくやればAns(Jump _)に到達することがないようにできる...? *)
  (* i.e.,e1がLoopのbodyにならないようにconcatを用いる *)
  | Ans(Jump(_)) -> assert false (* 実験的にこの場合は例外にしておく *)
  | Ans(exp) -> Let(xt, exp, e2)
  | Let(yt, exp, e1') -> Let(yt, exp, concat e1' xt e2)
                       
(* alignment is not necessary for our target machine on FPGA *)
let align i = i (* (if i mod 8 = 0 then i else i + 4) *)

