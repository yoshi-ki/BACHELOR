(* give names to intermediate values (K-normalization) *)
open Enums
type t = (* K正規化後の式 (caml2html: knormal_t) *)
  | Unit
  | Int of int
  | Float of float
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
  | LetRec of fundef * t
  | App of Id.t * Id.t list
  | Tuple of Id.t list
  | LetTuple of (Id.t * Type.t) list * Id.t * t
  | Get of Id.t * Id.t
  | Put of Id.t * Id.t * Id.t
  | ExtArray of Id.t
  | ExtFunApp of Id.t * Id.t list
and fundef = { name : Id.t * Type.t; args : (Id.t * Type.t) list; body : t }

let rec fv = function (* 式に出現する（自由な）変数 (caml2html: knormal_fv) *)
  | Unit | Int(_) | Float(_) | ExtArray(_) -> S.empty
  | Neg(x) | Itof(x) | In(x) | Fin(x) | Out(x) |
      FNeg(x) | FSqrt(x) | Ftoi(x) | Floor(x) -> S.singleton x
  | Add(x,y) | Sub(x,y) | Mul(x,y) | Div(x,y)
    | FAdd(x,y) | FSub(x,y) | FMul(x,y) | FDiv(x,y)
    | Get(x,y) -> S.of_list [x;y]
  | If (_,x,y,e1,e2) -> S.add x (S.add y (S.union (fv e1) (fv e2)))
  | Let((x,t),e1,e2) -> S.union (fv e1) (S.remove x (fv e2))
  | Var(x) -> S.singleton x
  | LetRec({ name = (x,t); args = yts; body = e1 }, e2) ->
     let zs = S.diff (fv e1) (S.of_list (List.map fst yts)) in
     S.diff (S.union zs (fv e2)) (S.singleton x)
  | App(x, ys) -> S.of_list (x::ys)
  | Tuple(xs) | ExtFunApp(_,xs) -> S.of_list xs
  | Put(x,y,z) -> S.of_list [x;y;z]
  | LetTuple(xs,y,e) -> S.add y (S.diff (fv e) (S.of_list (List.map fst xs)))

let insert_let (e, t) k = (* letを挿入する補助関数 (caml2html: knormal_insert) *)
  match e with
  | Var(x) -> k x
  | _ ->
      let x = Id.gentmp t in
      let e', t' = k x in
      Let((x, t), e, e'), t'

let rec g env = function (* K正規化ルーチン本体 (caml2html: knormal_g) *)
  | Syntax.Unit -> Unit, Type.Unit
  (* 論理値true, falseを整数1, 0に変換 (caml2html: knormal_bool) *)
  | Syntax.Bool(b) -> Int(if b then 1 else 0), Type.Int
  | Syntax.Int(i) -> Int(i), Type.Int
  | Syntax.Float(f) -> Float(f), Type.Float
  | Syntax.Not(e) -> g env (Syntax.If(e, Syntax.Bool(false), Syntax.Bool(true)))
  | Syntax.Neg(e) ->
      insert_let (g env e)
        (fun x -> Neg(x), Type.Int)
  | Syntax.Itof(e) ->
      insert_let (g env e)
        (fun x -> Itof(x), Type.Float)
  | Syntax.In(e) ->
      insert_let (g env e)
        (fun x -> In(x), Type.Int)
  | Syntax.Fin(e) ->
      insert_let (g env e)
        (fun x -> Fin(x), Type.Float)
  | Syntax.Out(e) ->
      insert_let (g env e)
        (fun x -> Out(x), Type.Unit)
  | Syntax.Add(e1, e2) -> (* 足し算のK正規化 (caml2html: knormal_add) *)
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
                    (fun y -> Add(x, y), Type.Int))
  | Syntax.Sub(e1, e2) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
                    (fun y -> Sub(x, y), Type.Int))
  | Syntax.Mul(e1, e2) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
                    (fun y -> Mul(x, y), Type.Int))
  | Syntax.Div(e1, e2) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> Div(x, y), Type.Int))
  | Syntax.FNeg(e) ->
      insert_let (g env e)
        (fun x -> FNeg(x), Type.Float)
  | Syntax.Ftoi(e) ->
      insert_let (g env e)
        (fun x -> Ftoi(x), Type.Int)
  | Syntax.Floor(e) ->
      insert_let (g env e)
        (fun x -> Floor(x), Type.Float)
  | Syntax.FSqrt(e) ->
      insert_let (g env e)
        (fun x -> FSqrt(x), Type.Float)
  | Syntax.FAdd(e1, e2) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> FAdd(x, y), Type.Float))
  | Syntax.FSub(e1, e2) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> FSub(x, y), Type.Float))
  | Syntax.FMul(e1, e2) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> FMul(x, y), Type.Float))
  | Syntax.FDiv(e1, e2) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
                    (fun y -> FDiv(x, y), Type.Float))
  | Syntax.Eq _ | Syntax.NE _ | Syntax.LE _ | Syntax.Lt _ as cmp ->
     g env (Syntax.If(cmp, Syntax.Bool(true), Syntax.Bool(false)))
      (* notによる分岐を変換 (caml2html: knormal_not) *)
  | Syntax.If(Syntax.Not(e1), e2, e3) -> g env (Syntax.If(e1, e3, e2))
  | Syntax.If(Syntax.Eq(e1, e2), e3, e4) ->
     insert_let (g env e1)
       (fun x -> insert_let (g env e2)
                   (fun y ->
                     let e3', t3 = g env e3 in
                     let e4', t4 = g env e4 in
                     If(Eq, x, y, e3', e4'), t3))
  | Syntax.If(Syntax.NE(e1, e2), e3, e4) ->
     insert_let (g env e1)
       (fun x -> insert_let (g env e2)
                   (fun y ->
                     let e3', t3 = g env e3 in
                     let e4', t4 = g env e4 in
                     If(NE, x, y, e3', e4'), t3))
  | Syntax.If(Syntax.LE(e1, e2), e3, e4) ->
     insert_let (g env e1)
       (fun x -> insert_let (g env e2)
                   (fun y ->
                     let e3', t3 = g env e3 in
                     let e4', t4 = g env e4 in
                     If(LE, x, y, e3', e4'), t3))
  | Syntax.If(Syntax.Lt(e1, e2), e3, e4) ->
     insert_let (g env e1)
       (fun x -> insert_let (g env e2)
                   (fun y ->
                     let e3', t3 = g env e3 in
                     let e4', t4 = g env e4 in
                     If(Lt, x, y, e3', e4'), t3))
  | Syntax.If(e1, e2, e3) -> g env (Syntax.If(Syntax.Eq(e1, Syntax.Bool(false)), e3, e2)) (* 比較のない分岐を変換 (caml2html: knormal_if) *)
  | Syntax.Let((x, t), e1, e2) ->
      let e1', t1 = g env e1 in
      let e2', t2 = g (M.add x t env) e2 in
      Let((x, t), e1', e2'), t2
  | Syntax.Var(x) when M.mem x env -> Var(x), M.find x env
  | Syntax.Var(x) -> (* 外部配列の参照 (caml2html: knormal_extarray) *)
      (match M.find x !Typing.extenv with
      | Type.Array(_) as t -> ExtArray x, t
      | _ -> failwith (Printf.sprintf "external variable %s does not have an array type" x))
  | Syntax.LetRec({ Syntax.name = (x, t); Syntax.args = yts; Syntax.body = e1 }, e2) ->
      let env' = M.add x t env in
      let e2', t2 = g env' e2 in
      let e1', t1 = g (M.add_list yts env') e1 in
      LetRec({ name = (x, t); args = yts; body = e1' }, e2'), t2
  | Syntax.App(Syntax.Var(f), e2s) when not (M.mem f env) -> (* 外部関数の呼び出し (caml2html: knormal_extfunapp) *)
      (match M.find f !Typing.extenv with
      | Type.Fun(_, t) ->
          let rec bind xs = function (* "xs" are identifiers for the arguments *)
            | [] -> ExtFunApp(f, xs), t
            | e2 :: e2s ->
                insert_let (g env e2)
                  (fun x -> bind (xs @ [x]) e2s) in
          bind [] e2s (* left-to-right evaluation *)
      | _ -> assert false)
  | Syntax.App(e1, e2s) ->
      (match g env e1 with
      | _, Type.Fun(_, t) as g_e1 ->
          insert_let g_e1
            (fun f ->
              let rec bind xs = function (* "xs" are identifiers for the arguments *)
                | [] -> App(f, xs), t
                | e2 :: e2s ->
                    insert_let (g env e2)
                      (fun x -> bind (xs @ [x]) e2s) in
              bind [] e2s) (* left-to-right evaluation *)
      | e1, t ->
         assert false)
  | Syntax.Tuple(es) ->
      let rec bind xs ts = function (* "xs" and "ts" are identifiers and types for the elements *)
        | [] -> Tuple(xs), Type.Tuple(ts)
        | e :: es ->
            let _, t as g_e = g env e in
            insert_let g_e
              (fun x -> bind (xs @ [x]) (ts @ [t]) es) in
      bind [] [] es
  | Syntax.LetTuple(xts, e1, e2) ->
      insert_let (g env e1)
        (fun y ->
          let e2', t2 = g (M.add_list xts env) e2 in
          LetTuple(xts, y, e2'), t2)
  | Syntax.Array(e1, e2) ->
      insert_let (g env e1)
        (fun x ->
          let _, t2 as g_e2 = g env e2 in
          insert_let g_e2
            (fun y ->
              let l =
                match t2 with
                | Type.Float -> "create_float_array"
                | _ -> "create_array" in
              ExtFunApp(l, [x; y]), Type.Array(t2)))
  | Syntax.Get(e1, e2) ->
      (match g env e1 with
       | _, Type.Array(t) as g_e1 ->
          insert_let g_e1
            (fun x -> insert_let (g env e2)
                (fun y -> Get(x, y), t))
      | _ -> assert false)
  | Syntax.Put(e1, e2, e3) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> insert_let (g env e3)
                (fun z -> Put(x, y, z), Type.Unit)))

let f e = fst (g M.empty e)


let indent n =
  for i = 1 to n do
    Printf.printf "  "
  done

let depth = ref 0

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
  depth := !depth + 1;
  print_kNormal body;
  depth := !depth - 1

and print_kNormal =
  fun t ->
    indent !depth;
    match t with
    | Unit -> Printf.printf "Unit\n"
    | Int x -> Printf.printf "INT %d\n" x
    | Float x -> Printf.printf "FLOAT %f\n" x
    | Neg id ->
      Printf.printf "NEG ";
      Id.print_id id;
      Printf.printf "\n"
    | Add (id1, id2) ->
      Printf.printf "ADD ";
      Id.print_id id1;
      Printf.printf " ";
      Id.print_id id2;
      Printf.printf "\n"
    | Sub (id1, id2) ->
      Printf.printf "SUB ";
      Id.print_id id1;
      Printf.printf " ";
      Id.print_id id2;
      Printf.printf "\n"
    | Mul (id1, id2) ->
      Printf.printf "MUL ";
      Id.print_id id1;
      Printf.printf " ";
      Id.print_id id2;
      Printf.printf "\n"
    | Div (id1, id2) ->
      Printf.printf "DIV ";
      Id.print_id id1;
      Printf.printf " ";
      Id.print_id id2;
      Printf.printf "\n"
    | Itof id ->
      Printf.printf "ITOF ";
      Id.print_id id;
      Printf.printf "\n"
    | In id ->
      Printf.printf "INPUT ";
      Id.print_id id;
      Printf.printf "\n"
    | Out id ->
      Printf.printf "OUT ";
      Id.print_id id;
      Printf.printf "\n"
    | Fin id ->
      Printf.printf "FINPUT ";
      Id.print_id id;
      Printf.printf "\n"
    | FNeg id ->
      Printf.printf "FNEG ";
      Id.print_id id;
      Printf.printf "\n"
    | Ftoi id ->
      Printf.printf "FTOI ";
      Id.print_id id;
      Printf.printf "\n"
    | Floor id ->
      Printf.printf "FLOOR ";
      Id.print_id id;
      Printf.printf "\n"
    | FSqrt id ->
      Printf.printf "SQRT ";
      Id.print_id id;
      Printf.printf "\n"
    | FAdd (id1, id2) ->
      Printf.printf "FADD ";
      Id.print_id id1;
      Printf.printf " ";
      Id.print_id id2;
      Printf.printf "\n"
    | FSub (id1, id2) ->
      Printf.printf "FSUB ";
      Id.print_id id1;
      Printf.printf " ";
      Id.print_id id2;
      Printf.printf "\n"
    | FMul (id1, id2) ->
      Printf.printf "FMUL ";
      Id.print_id id1;
      Printf.printf " ";
      Id.print_id id2;
      Printf.printf "\n"
    | FDiv (id1, id2) ->
      Printf.printf "FDIV ";
      Id.print_id id1;
      Printf.printf " ";
      Id.print_id id2;
      Printf.printf "\n"
    | If (cmp,id1,id2,s1,s2) ->
       let print_cmp x =
         (match x with
          | Eq -> Printf.printf "IFEQ "
          | NE -> Printf.printf "IFNE "
          | LE -> Printf.printf "IFLE "
          | Lt -> Printf.printf "IFLT ") in
       print_cmp cmp;
       Id.print_id id1;
       Printf.printf " ";
       Id.print_id id2;
       Printf.printf "\nTHEN\n";      
       depth := !depth + 1;
       print_kNormal s1;
       Printf.printf "ELSE\n";
       print_kNormal s2;
       depth := !depth - 1
    | Let ((id,ty),s1,s2) ->
      Printf.printf "LET ";
      Id.print_id id;
      Printf.printf " : ";
      Type.print_type ty;
      Printf.printf " =\n";
      depth := !depth + 1;
      print_kNormal s1;
      depth := !depth - 1;
      indent !depth;
      Printf.printf "IN\n";
      print_kNormal s2;
    | Var id ->
      Printf.printf "VAR ";
      Id.print_id id;
      Printf.printf "\n"
    | LetRec (fundef,s) ->
      Printf.printf "LETREC ";
      print_fundef fundef;
      indent !depth;
      Printf.printf "IN\n";
      print_kNormal s;
    | App (id,ids) ->
      Printf.printf "APP ";
      Id.print_id id;
      List.iter
        (fun id ->
           Printf.printf " ";
           Id.print_id id) ids;
      Printf.printf "\n"
    | Tuple [] -> ()
    | Tuple (id::ids) ->
      Printf.printf "(";
      Id.print_id id;
      List.iter
        (fun id ->
           Printf.printf ",";
           Id.print_id id) ids;
      Printf.printf ")\n"
    | LetTuple ([],_,_) -> ()
    | LetTuple ((id1,_)::lst,id2,s) ->
      Printf.printf "LETTUPLE ";
      Printf.printf "(";
      Id.print_id id1;
      List.iter
        (fun (id,_) ->
           Printf.printf ",";
           Id.print_id id) lst;
      Printf.printf ") = ";
      Id.print_id id2;
      Printf.printf "\n";
      indent !depth;
      Printf.printf "IN\n";
      print_kNormal s;
    | Get (id1,id2) ->
      Printf.printf "GET ";
      Id.print_id id1;
      Printf.printf " ";
      Id.print_id id2;
      Printf.printf "\n"
    | Put (id1,id2,id3) ->
      Printf.printf "PUT ";
      Id.print_id id1;
      Printf.printf " ";
      Id.print_id id2;
      Printf.printf " ";
      Id.print_id id3;
      Printf.printf "\n"
    | ExtArray id ->
      Printf.printf "EXTARRAY ";
      Id.print_id id;
      Printf.printf "\n"
    | ExtFunApp (id,ids) ->
      Printf.printf "EXTFUNAPP ";
      Id.print_id id;
      List.iter
        (fun id ->
           Printf.printf " ";
           Id.print_id id) ids;
      Printf.printf "\n"
