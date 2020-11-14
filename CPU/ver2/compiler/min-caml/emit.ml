open Asm
open Enums

external get : float -> int32 = "get"

(* external gethi : float -> int32 = "gethi"
 * external getlo : float -> int32 = "getlo" *)

let stackset = ref S.empty (* すでにSaveされた変数の集合 (caml2html: emit_stackset) *)
let stackmap = ref [] (* Saveされた変数の、スタックにおける位置 (caml2html: emit_stackmap) *)
let save x =
  stackset := S.add x !stackset;
  if not (List.mem x !stackmap) then
    stackmap := !stackmap @ [x]
let savef x =
  stackset := S.add x !stackset;
  if not (List.mem x !stackmap) then
    (let pad =
      if List.length !stackmap mod 2 = 0 then [] else [Id.gentmp Type.Int] in
    stackmap := !stackmap @ pad @ [x; x])
let locate x =
  let rec loc = function
    | [] -> []
    | y :: zs when x = y -> 0 :: List.map succ (loc zs)
    | y :: zs -> List.map succ (loc zs) in
  loc !stackmap
let offset x = 4 * List.hd (locate x)
let stacksize () = align ((List.length !stackmap + 1) * 4)

let pp_id_or_imm = function
  | V(x) -> x
  | C(i) -> string_of_int i

(* 関数呼び出しのために引数を並べ替える(register shuffling) (caml2html: emit_shuffle) *)
(* xysのy側にswが入らないことを保証して運用する *)
let rec shuffle sw xys =
  (* remove identical moves *)
  let _, xys = List.partition (fun (x, y) -> x = y) xys in
  (* find acyclic moves *)
  match List.partition (fun (_, y) -> List.mem_assoc y xys) xys with
  | [], [] -> []
  | (x, y) :: xys, [] -> (* no acyclic moves; resolve a cyclic move *)
      (y, sw) :: (x, y) :: shuffle sw (List.map
                                         (function
                                           | (y', z) when y = y' -> (sw, z)
                                           | yz -> yz)
                                         xys)
  | xys, acyc -> acyc @ shuffle sw xys

type dest = Tail | NonTail of Id.t (* 末尾かどうかを表すデータ型 (caml2html: emit_dest) *)
let rec g oc = function (* 命令列のアセンブリ生成 (caml2html: emit_g) *)
  | dest, Ans(exp) -> g' oc (dest, exp)
  | dest, Let((x, t), exp, e) ->
      g' oc (NonTail(x), exp);
      g oc (dest, e)
and g' oc = function (* 各命令のアセンブリ生成 (caml2html: emit_gprime) *)
  (* 末尾でなかったら計算結果をdestにセット (caml2html: emit_nontail) *)
  | NonTail(_), Nop -> ()
  | NonTail(x), Set(i) -> Printf.fprintf oc "\taddi\t%%r0 %s %d\n" x i
  | NonTail(x), SetL(Id.L(y)) -> Printf.fprintf oc "\taddi\t%%r0 %s %s\n" x y
  | NonTail(x), ILd(Id.L(y)) ->
     if is_freg x then Printf.fprintf oc "\tilw.s\t%%r0 %s %s\n" x y
     else Printf.fprintf oc "\tilw\t%%r0 %s %s\n" x y
     (* if is_freg x then
      *   (Printf.fprintf oc "\taddi\t%%r0 %%r31 %s\n" y;
      *    Printf.fprintf oc "\tilw.s\t%%r31 %s 0\n" x)
      * else
      *   (Printf.fprintf oc "\taddi\t%%r0 %%r31 %s\n" y;
      *    Printf.fprintf oc "\tilw\t%%r31 %s 0\n" x) *)
  | NonTail(x), Mov(y) when x = y -> ()
  | NonTail(x), Mov(y) -> Printf.fprintf oc "\tmov\t%s %s\n" y x
  | NonTail(x), Neg(y) -> Printf.fprintf oc "\tsub\t%%r0 %s %s\n" y x
  | NonTail(x), Itof(y) -> Printf.fprintf oc "\tmtc1\t%s %s\n" y x
  | NonTail(x), In(_) -> Printf.fprintf oc "\tin\t%s\n" x
  | NonTail(x), Fin(_) -> Printf.fprintf oc "\tfin\t%s\n" x
  | NonTail(_), Out(y) -> Printf.fprintf oc "\tout\t%s\n" y
  | NonTail(x), AddI(y,i) -> Printf.fprintf oc "\taddi\t%s %s %d\n" y x i
  | NonTail(x), Add(y, z) -> Printf.fprintf oc "\tadd\t%s %s %s\n" y z x
  | NonTail(x), Sub(y, z) -> Printf.fprintf oc "\tsub\t%s %s %s\n" y z x
  | NonTail(x), Mul(y, z) -> Printf.fprintf oc "\tmul\t%s %s %s\n" y z x
  | NonTail(x), Div(y, z) -> Printf.fprintf oc "\tdiv\t%s %s %s\n" y z x
  | NonTail(x), SLLI(y, i) -> Printf.fprintf oc "\tslli\t%s %s %d\n" y x i
  | NonTail(x), SLL(y, z) -> Printf.fprintf oc "\tsll\t%s %s %s\n" y x z
  | NonTail(x), Ld(y, (C(i))) ->
     Printf.fprintf oc "\tlw\t%s %s %s\n" y x (pp_id_or_imm (C(i)))
  | NonTail(x), Ld(y, z') ->
     Printf.fprintf oc "\tadd\t%s %s %%r31\n" y (pp_id_or_imm z');
     Printf.fprintf oc "\tlw\t%%r31 %s 0\n" x
  | NonTail(_), St(x, y, C(i)) ->
     Printf.fprintf oc "\tsw\t%s %s %s\n" y x (pp_id_or_imm (C(i)))
  | NonTail(_), St(x, y, z') ->
     Printf.fprintf oc "\tadd\t%s %s %%r31\n" y (pp_id_or_imm z');
     Printf.fprintf oc "\tsw\t%%r31 %s 0\n" x
  | NonTail(x), FMov(y) when x = y -> ()
  | NonTail(x), FMov(y) ->
      Printf.fprintf oc "\tmov.s\t%s %s\n" y x;
  | NonTail(x), FNeg(y) ->
     Printf.fprintf oc "\tneg.s\t%s %s\n" y x;
  | NonTail(x), Ftoi(y) -> Printf.fprintf oc "\tmfc1\t%s %s\n" x y
  | NonTail(x), FSqrt(y) ->
     Printf.fprintf oc "\tsqrt.s\t%s %s\n" y x;
  | NonTail(x), Floor(y) ->
      Printf.fprintf oc "\tfloor.w.s\t%s %s\n" y x;
  | NonTail(x), FAdd(y, z) -> Printf.fprintf oc "\tadd.s\t%s %s %s\n" z y x
  | NonTail(x), FSub(y, z) -> Printf.fprintf oc "\tsub.s\t%s %s %s\n" z y x
  | NonTail(x), FMul(y, z) -> Printf.fprintf oc "\tmul.s\t%s %s %s\n" z y x
  | NonTail(x), FDiv(y, z) -> Printf.fprintf oc "\tdiv.s\t%s %s %s\n" z y x
  | NonTail(x), LdF(y, (C (i))) ->
     Printf.fprintf oc "\tlw.s\t%s %s %s\n" y x (pp_id_or_imm (C (i)))
  | NonTail(x), LdF(y, z') ->
     Printf.fprintf oc "\tadd\t%s %s %%r31\n" y (pp_id_or_imm z');
     Printf.fprintf oc "\tlw.s\t%%r31 %s 0\n" x
  | NonTail(_), StF(x, y, C(i)) ->
     Printf.fprintf oc "\tsw.s\t%s %s %s\n" y x (pp_id_or_imm (C(i)))
  | NonTail(_), StF(x, y, z') ->
     Printf.fprintf oc "\tadd\t%s %s %%r31\n" y (pp_id_or_imm z');
     Printf.fprintf oc "\tsw.s\t%%r31 %s 0\n" x
  | NonTail(_), Comment(s) -> Printf.fprintf oc "\t# %s\n" s
  (* 退避の仮想命令の実装 (caml2html: emit_save) *)
  | NonTail(_), Save(x, y) when List.mem x allregs && not (S.mem y !stackset) ->
      save y;
      Printf.fprintf oc "\tsw\t%s %s %d\n" reg_sp x (offset y)
  | NonTail(_), Save(x, y) when List.mem x allfregs && not (S.mem y !stackset) ->
      savef y;
      Printf.fprintf oc "\tsw.s\t%s %s %d\n" reg_sp x (offset y)
  | NonTail(_), Save(x, y) -> assert (S.mem y !stackset); ()
  (* 復帰の仮想命令の実装 (caml2html: emit_restore) *)
  | NonTail(x), Restore(y) when List.mem x allregs ->
      Printf.fprintf oc "\tlw\t%s %s %d\n" reg_sp x (offset y)
  | NonTail(x), Restore(y) ->
      assert (List.mem x allfregs);
      Printf.fprintf oc "\tlw.s\t%s %s %d\n" reg_sp x (offset y)
  (* 末尾だったら計算結果を第一レジスタにセットしてリターン (caml2html: emit_tailret) *)
  | Tail, (Nop | St _ | StF _ | Comment _ | Save _ as exp) ->
      g' oc (NonTail(Id.gentmp Type.Unit), exp);
      Printf.fprintf oc "\tretl\n";
  | Tail, (Set _ | SetL _ | Mov _ | Neg _ | Itof _ | In _ | Fin _ | Out _
           | Add _ | AddI _ | Sub _ | Mul _ | Div _ | SLL _ | SLLI _ | Ld _ | ILd _ as exp) ->
      g' oc (NonTail(regs.(0)), exp);
      Printf.fprintf oc "\tretl\n";
  | Tail, (FMov _ | FNeg _ | Ftoi _ | FSqrt _ | Floor _ | FAdd _ | FSub _ | FMul _ | FDiv _
           | LdF _  as exp) ->
      g' oc (NonTail(fregs.(0)), exp);
      Printf.fprintf oc "\tretl\n";
  | Tail, (Restore(x) as exp) ->
      (match locate x with
      | [i] -> g' oc (NonTail(regs.(0)), exp)
      | [i; j] when i + 1 = j -> g' oc (NonTail(fregs.(0)), exp)
      | _ -> assert false);
      Printf.fprintf oc "\tretl\n";
  | Tail, If(cmp, x, y, e1, e2) ->
     let b, bn =
       (match cmp with
        | Eq -> "beq", "bne"
        | NE -> "bne", "beq"
        | LE -> "ble", "bg"
        | Lt -> "bl", "bge") in
     g'_tail_if oc e1 e2 b bn x y
  | Tail, FIf(cmp, x, y, e1, e2) ->
     let fb, fbn =
       (match cmp with
        | Eq -> "fbeq", "fbne"
        | NE -> "fbne", "fbeq"
        | LE -> "fble", "fbg"
        | Lt -> "fbl", "fbge") in
     g'_tail_if oc e1 e2 fb fbn x y
  | NonTail(z), If(cmp,x,y,e1,e2) ->
     let b, bn =
       (match cmp with
        | Eq -> "beq", "bne"
        | NE -> "bne", "beq"
        | LE -> "ble", "bg"
        | Lt -> "bl", "bge") in
     g'_non_tail_if oc (NonTail(z)) e1 e2 b bn x y
  | NonTail(z), FIf(cmp,x,y,e1,e2) ->
     let fb, fbn =
       (match cmp with
        | Eq -> "fbeq", "fbne"
        | NE -> "fbne", "fbeq"
        | LE -> "fble", "fbg"
        | Lt -> "fbl", "fbge") in
     g'_non_tail_if oc (NonTail(z)) e1 e2 fb fbn x y
  (* 関数呼び出しの仮想命令の実装 (caml2html: emit_call) *)
  | Tail, CallCls(x, ys, zs) -> (* 末尾呼び出し (caml2html: emit_tailcall) *)
      g'_args oc [(x, reg_cl)] ys zs;
      Printf.fprintf oc "\tlw\t%s %s 0\n" reg_cl reg_sw;
      Printf.fprintf oc "\tjr\t%s\n" reg_sw;
  | Tail, CallDir(Id.L(x), ys, zs) -> (* 末尾呼び出し *)
      g'_args oc [] ys zs;
      Printf.fprintf oc "\tj\t%s\n" x;
  | NonTail(a), CallCls(x, ys, zs) ->
      g'_args oc [(x, reg_cl)] ys zs;
      let ss = stacksize () in
      Printf.fprintf oc "\tsw\t%s %s %d\n" reg_sp reg_ra (ss - 4);
      Printf.fprintf oc "\tlw\t%s %s 0\n" reg_cl reg_sw;
      Printf.fprintf oc "\taddi\t%s %s %d\n" reg_sp reg_sp ss;
      Printf.fprintf oc "\tjalr\t%s\n" reg_sw;
      Printf.fprintf oc "\taddi\t%s %s -%d\n" reg_sp reg_sp ss;
      Printf.fprintf oc "\tlw\t%s %s %d\n" reg_sp reg_ra (ss - 4);
      if List.mem a allregs && a <> regs.(0) then
        Printf.fprintf oc "\tmov\t%s %s\n" regs.(0) a
      else if List.mem a allfregs && a <> fregs.(0) then
        (Printf.fprintf oc "\tmov.s\t%s %s\n" fregs.(0) a)
  | NonTail(a), CallDir(Id.L(x), ys, zs) ->
      g'_args oc [] ys zs;
      let ss = stacksize () in
      Printf.fprintf oc "\tsw\t%s %s %d\n" reg_sp reg_ra (ss - 4);
      Printf.fprintf oc "\taddi\t%s %s %d\n" reg_sp reg_sp ss;
      Printf.fprintf oc "\tjal\t%s \n" x;
      Printf.fprintf oc "\taddi\t%s %s -%d\n" reg_sp reg_sp ss;
      Printf.fprintf oc "\tlw\t%s %s %d\n" reg_sp reg_ra (ss - 4);
      if List.mem a allregs && a <> regs.(0) then
        Printf.fprintf oc "\tmov\t%s %s\n" regs.(0) a
      else if List.mem a allfregs && a <> fregs.(0) then
        (Printf.fprintf oc "\tmov.s\t%s %s\n" fregs.(0) a)
and g'_tail_if oc e1 e2 b bn reg1 reg2 =
  let b_else = Id.genid (b ^ "_else") in
  Printf.fprintf oc "\t%s\t%s %s %s \n" bn reg1 reg2 b_else;
  let stackset_back = !stackset in
  g oc (Tail, e1);
  Printf.fprintf oc "%s :\n" b_else;
  stackset := stackset_back;
  g oc (Tail, e2)
and g'_non_tail_if oc dest e1 e2 b bn reg1 reg2 =
  let b_else = Id.genid (b ^ "_else") in
  let b_cont = Id.genid (b ^ "_cont") in  Printf.fprintf oc "\t%s\t%s %s %s \n" bn reg1 reg2 b_else;
  let stackset_back = !stackset in
  g oc (dest, e1);
  let stackset1 = !stackset in
  Printf.fprintf oc "\tj\t%s \n" b_cont;
  Printf.fprintf oc "%s :\n" b_else;
  stackset := stackset_back;
  g oc (dest, e2);
  Printf.fprintf oc "%s :\n" b_cont;
  let stackset2 = !stackset in
  stackset := S.inter stackset1 stackset2
and g'_args oc x_reg_cl ys zs =
  let (i, yrs) =
    List.fold_left
      (fun (i, yrs) y -> (i + 1, (y, regs.(i)) :: yrs))
      (0, x_reg_cl)
      ys in
  List.iter
    (fun (y, r) -> Printf.fprintf oc "\tmov\t%s %s\n" y r)
    (shuffle reg_sw yrs);
  let (d, zfrs) =
    List.fold_left
      (fun (d, zfrs) z -> (d + 1, (z, fregs.(d)) :: zfrs))
      (0, [])
      zs in
  List.iter
    (fun (z, fr) ->
      Printf.fprintf oc "\tmov.s\t%s %s\n" z fr)
    (shuffle reg_fsw zfrs)

let h oc { name = Id.L(x); args = _; fargs = _; body = e; ret = _ } =
  Printf.fprintf oc "%s :\n" x;
  stackset := S.empty;
  stackmap := [];
  g oc (Tail, e)

let f oc (Prog(data, fundefs, e)) =
  (* Format.eprintf "generating assembly...@."; *)
  (* Printf.fprintf oc ".section\t\".rodata\"\n"; *)
  (* Printf.fprintf oc ".align\t8\n"; *)
  Printf.fprintf oc "#data_section\n";
  List.iter
    (fun (Id.L(x), d') ->
       match d' with
         F (d) ->
         Printf.fprintf oc "%s :\t# %f\n" x d;
         Printf.fprintf oc "\t.float\t0x%lx\n" (get d);
       | I (d) ->
         Printf.fprintf oc "%s :\t# %d\n" x d;
         Printf.fprintf oc "\t.int\t%d\n" d)
    data;
  (* Printf.fprintf oc ".section\t\".text\"\n"; *)
  (* Printf.fprintf oc ".global\tmin_caml_start\n"; *)
  Printf.fprintf oc "#text_section\n";
  Printf.fprintf oc "program_start :\n";
  (* Printf.fprintf oc "\tsave\t%%r29 -112 %%r29\n"; (* from gcc; why 112? *) *)
  stackset := S.empty;
  stackmap := [];
  g oc (NonTail("%r1"), e);
  Printf.fprintf oc "\tret\n";
  List.iter (fun fundef -> h oc fundef) fundefs;
  Printf.fprintf oc "#libraries\n";
  let lib = open_in "lib.s" in
  try
    while true do Printf.fprintf oc "%s\n" (input_line lib) done
  with End_of_file -> ()
  (* Printf.fprintf oc "\trestore\n" *)
