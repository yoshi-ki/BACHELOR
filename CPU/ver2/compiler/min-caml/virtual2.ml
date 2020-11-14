(* translation into SPARC assembly with infinite number of virtual registers *)
(* c.f. closure2.ml, asm2.ml*)
open Asm2

let data = ref [] (* 浮動小数点数の定数テーブル (caml2html: virtual_data) *)

(* addiはInt型の変数の時に適用する関数 *)
(* addfはFloat型の~ *)
(* つまり，型ごとに適用する関数を分けられるfold_left関数 *)
let classify xts ini addf addi =
  List.fold_left
    (fun acc (x, t) ->
      match t with
      | Type.Unit -> acc (* Unit型の時は何もしない *)
      | Type.Float -> addf acc x (* Floatの時はaddfでaccにxを追加 *)
      (* 下の場合は型の情報もaddiの引数に取れるようになってる *)
      | _ -> addi acc x t) (* その他の型の時はaddiでaccにxを追加 *)
    ini (* accの初期値, initのこと *)
    xts (* 変数と型のリスト *) (* 典型的には関数の引数 *)

let separate xts = (* classifyを用いて変数をInt型とFloat型に分ける *)
  classify
    xts
    ([], [])
    (fun (int, float) x -> (int, float @ [x]))
    (fun (int, float) x _ -> (int @ [x], float)) (* Float以外は同じとみなす: x _ -> のところ *)

let expand xts ini addf addi = (* classifyと同じだが, offsetも計算してくれる *)
  (* offsetをaddf, addiの引数に加えられる *)
  (* offsetはFloatとそれ以外を一緒くたにして計算 *) (* stackの位置とかの計算？ *)
  (* 先頭のoffsetには常に次に割り当て可能なoffsetが入っている <- ループ不変条件 *)
  classify
    xts
    ini
    (fun (offset, acc) x ->
      let offset = align offset in
      (offset + 4, addf x offset acc))
    (fun (offset, acc) x t ->
      (offset + 4, addi x t offset acc))

let rec g env = function (* 式の仮想マシンコード生成 (caml2html: virtual_g) *)
  | Closure2.Unit -> Ans(Nop)
  | Closure2.Int(i) ->
    if -1048576 <= i && i < 1048576 then Ans(Set(i))
    else
      let l =
        try
          (* すでに定数テーブルにあったら再利用 *)
          let (l, _) =
            List.find (fun (_, d) ->
                match d with
                  I(i') -> i = i'
                | _ -> false) !data in (* data : data_tのリストへの参照 *) (* gを呼び出すfで確保する *)
          l
        with Not_found ->
          let l = Id.L(Id.genid "l") in
          data := (l, I(i)) :: !data;
          l in
      (* let x = Id.genid "l" in
       * Let((x, Type.Int), SetL(l), Ans(Ld(I, x, C(0)))) *)
      Ans(ILd(l))
  | Closure2.Float(f) ->
    let l =
      try
        (* すでに定数テーブルにあったら再利用 *)
        let (l, _) =
          List.find (fun (_, d) ->
              match d with
                F (f') -> f = f'
              | _ -> false) !data in
        l
      with Not_found ->
        let l = Id.L(Id.genid "l") in
        data := (l, F(f)) :: !data;
        l in
    (* let x = Id.genid "l" in
     * Let((x, Type.Int), SetL(l), Ans(LdF(I, x, C(0)))) *)
    Ans(ILd(l))
  | Closure2.Neg(x) -> Ans(Neg(x))
  | Closure2.Itof(x) -> Ans(Itof(x))
  | Closure2.In(x) -> Ans(In(x))
  | Closure2.Fin(x) -> Ans(Fin(x))
  | Closure2.Out(x) -> Ans(Out(x))
  | Closure2.Add(x,y) -> Ans(Add(x,y))
  | Closure2.Sub(x,y) -> Ans(Sub(x,y))
  | Closure2.Mul(x,y) -> Ans(Mul(x,y))
  | Closure2.Div(x,y) -> Ans(Div(x,y))
  | Closure2.FNeg(x) -> Ans(FNeg(x))
  | Closure2.Ftoi(x) -> Ans(Ftoi(x))
  | Closure2.FSqrt(x) -> Ans(FSqrt(x))
  | Closure2.Floor(x) -> Ans(Floor(x))
  | Closure2.FAdd(x, y) -> Ans(FAdd(x, y))
  | Closure2.FSub(x, y) -> Ans(FSub(x, y))
  | Closure2.FMul(x, y) -> Ans(FMul(x, y))
  | Closure2.FDiv(x, y) -> Ans(FDiv(x, y))
  | Closure2.If(cmp, x, y, e1, e2) ->
     (* ここで比較命令の型を判別するためにenvを引く *)
      (match M.find x env with
      | Type.Bool | Type.Int -> Ans(If(cmp, x, y, g env e1, g env e2))
      | Type.Float -> Ans(FIf(cmp, x, y, g env e1, g env e2))
      | _ -> failwith "equality supported only for bool, int, and float")
  | Closure2.Let((x, t1), e1, e2) ->
      let e1' = g env e1 in
      let e2' = g (M.add x t1 env) e2 in
      (* e1'の答えをxに束縛してe2'を実行 *)
      concat e1' (x, t1) e2'
  | Closure2.Var(x) ->
      (match M.find x env with
      | Type.Unit -> Ans(Nop)
      | Type.Float -> Ans(FMov(x))
      | _ -> Ans(Mov(x)))
  | Closure2.MakeCls((x, t), { Closure2.entry = l; Closure2.actual_fv = ys }, e2) -> (* クロージャの生成 (caml2html: virtual_makecls) *)
     (* MakeClsはLNormal.tでのLetRecに対応する *)
     Format.eprintf "---- creating closure : %s ----@." (let L(x) = l in x);
     (* Closure2のアドレスをセットしてから、自由変数の値をストア *)
     (* xは変数だから，envに追加する *)
     (* xの中身はxのアドレス *)
      let e2' = g (M.add x t env) e2 in
      let offset, store_fv =
        expand
          (List.map (fun y -> (y, M.find y env)) ys) (* クロージャに格納する変数と型のリスト *)
          (4, e2') (* 初期offsetは4 <- 0にはラベルが格納されるから *)
          (fun y offset store_fv -> seq(StF(y, x, C(offset)), store_fv))
          (fun y _ offset store_fv -> seq(St(y, x, C(offset)), store_fv)) in
      Let((x, t), Mov(reg_hp),
          Let((reg_hp, Type.Int), AddI(reg_hp, align offset),
              let z = Id.genid "l" in
              Let((z, Type.Int), SetL(l), 
                  seq(St(z, x, C(0)),
                      store_fv))))
  | Closure2.AppCls(x, ys) ->
     (* int, floatはそれぞれys中の変数のうちint/float型の変数全体からなる部分リスト *)
      let (int, float) = separate (List.map (fun y -> (y, M.find y env)) ys) in
      Ans(CallCls(x, int, float))
  | Closure2.AppDir(Id.L(x), ys) ->
      let (int, float) = separate (List.map (fun y -> (y, M.find y env)) ys) in
      Ans(CallDir(Id.L(x), int, float))
  | Closure2.Tuple(xs) -> (* 組の生成 (caml2html: virtual_tuple) *)
     (* MakeClsの時もそうだったが，組の生成は *)
     (* 新しい変数yを生成 -> その変数にreg_hpの値を格納 -> *)
     (* reg_hpを値の合計サイズ分ずらす -> yの先頭から組の要素を格納 -> yを返す *)
     (* により行う *)
      let y = Id.genid "t" in (* 新しい変数を生成 *)
      let (offset, store) = (* storeが要素を格納する命令列 *)
        expand
          (List.map (fun x -> (x, M.find x env)) xs) (* <- xts *)
          (0, Ans(Mov(y))) (* 組みの各要素をyから始まるヒープ領域に格納した後にyを返す *)
          (fun x offset store -> seq(StF(x, y, C(offset)), store))
          (fun x _ offset store -> seq(St(x, y, C(offset)), store)) in
      Let((y, Type.Tuple(List.map (fun x -> M.find x env) xs)), Mov(reg_hp),
          Let((reg_hp, Type.Int), AddI(reg_hp, align offset), (* reg_hpを次に割り当て可能なアドレスにずらす *)
              store)) (* 要素を格納してyを返す *) (* simmで最適化できなかったロード，ストアはこれ? *)
  | Closure2.LetTuple(xts, y, e2) ->
      let s = Closure2.fv e2 in
      let (offset, load) =
        expand (* ロードしてからe2を実行 *)
          xts
          (0, g (M.add_list xts env) e2) (* 後に続く命令 -> e2を変換したもの *)
          (fun x offset load ->
            if not (S.mem x s) then load else (* [XX] a little ad hoc optimization *)
              fletd(x, LdF(y, C(offset)), load)) (* ここで型の情報が必要だからfletdなんて関数があるのか *)
          (* 超 ad hoc やんけ *) (* もちろんbaseは組の値y *)
          (fun x t offset load ->
            if not (S.mem x s) then load else (* [XX] a little ad hoc optimization *)
            Let((x, t), Ld(y, C(offset)), load)) (* こっちはaddiが型も引数に取れるから普通のLet *) in
      load (* ロードしてから変換後のe2を実行するコードを返す *)
  | Closure2.Get(x, y) -> (* 配列の読み出し (caml2html: virtual_get) *)
     (* xには配列のbaseの値が入っている *)
      let offset = Id.genid "o" (* offsetにはyを2だけ左シフトした値を格納する *) in
      (match M.find x env with
      | Type.Array(Type.Unit) -> Ans(Nop)
      | Type.Array(Type.Float) ->
          Let((offset, Type.Int), SLLI(y, 2),
              Ans(LdF(x, V(offset))))
      | Type.Array(_) ->
          Let((offset, Type.Int), SLLI(y, 2),
              Ans(Ld(x, V(offset))))
      | _ -> assert false)
  | Closure2.Put(x, y, z) ->
      let offset = Id.genid "o" in
      (match M.find x env with
      | Type.Array(Type.Unit) -> Ans(Nop)
      | Type.Array(Type.Float) ->
          Let((offset, Type.Int), SLLI(y, 2),
              Ans(StF(z, x, V(offset)))) (* Jump前の変数の移動はこれに準じることになりそう *)
      | Type.Array(_) ->
          Let((offset, Type.Int), SLLI(y, 2),
              Ans(St(z, x, V(offset))))
      | _ -> assert false)
  | Closure2.Loop(l, yts, zs, e) -> Ans(Loop(l, yts, zs, g (M.add_list yts env) e))
  (* | Closure2.Loop(l, yts, zs, e) -> Ans(Loop(l, yts, zs, Ans(Nop))) *)
  | Closure2.Jump(yzts, l) -> Ans(Jump(yzts, l)) (* これでいいはず...? *)
  (* JumpはLetLoopの最深部にしかない *)
  (* 従って，Ans(Jump _)が直接コードに束縛されるようなコードにはならないはず *)
  (* 以降ではJumpに束縛された変数はassertする *)
  | Closure2.ExtArray(Id.L(x)) -> Ans(SetL(Id.L("min_caml_" ^ x)))

(* 関数の仮想マシンコード生成 (caml2html: virtual_h) *)
let h { Closure2.name = (Id.L(x), t); Closure2.args = yts; Closure2.formal_fv = zts; Closure2.body = e } =
  let (int, float) = separate yts in (* int/float : Id.t list *)
  let (offset, load) = (* クロージャ内の自由変数をロードしてから関数本体を実行する *)
    expand
      zts
      (4, g (M.add x t (M.add_list yts (M.add_list zts M.empty))) e) (* 初期offsetは4 *) (* 環境に引数を追加してbodyを変換 *)
      (fun z offset load -> fletd(z, LdF(x, C(offset)), load)) (* 変数の型に応じてロード *)
      (fun z t offset load -> Let((z, t), Ld(x, C(offset)), load)) in
  match t with
  | Type.Fun(_, t2) ->
      { name = Id.L(x); args = int; fargs = float; body = load; ret = t2 } (* retは返り値の型 *)
  | _ -> assert false

(* プログラム全体の仮想マシンコード生成 (caml2html: virtual_f) *)
let f (Closure2.Prog(fundefs, e)) =
  data := [];
  let fundefs = List.map h fundefs in
  let e = g M.empty e in
  Prog(!data, fundefs, e)
