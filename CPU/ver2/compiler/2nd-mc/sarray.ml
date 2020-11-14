(* KNormal.t型の値中のdata arrayを集める *)
(* inlineやconstFoldなどの，K正規形に対する最適化の実行後にこれを行う *)
(* KNormal.tの値はalpha変換されていることを仮定する *)

(* let find x env = try M.find x env with Not_found -> Var(x) *)
open KNormal

let is_create_array l =
  l = "create_array" || l = "create_float_array"


let sarrs = ref []

let dirty_all =
  M.map (fun (ptr, _) -> (ptr, true))
         

(* data中のarrayはDAG likeに並んでいるものと仮定する *)
(* つまり，すでに追加されたデータによる配列しか取れない *)
(* gは静的に取れる配列のリストarrsと変数とラベルの対応表envを作成する *)
(* envにはその配列に書き込みが行われたかどうかのブール値is_dirtyも含める *)
let rec g oc env is_glbl = function
  | ExtFunApp(x, ys) when is_glbl
                          && is_create_array x ->
     assert (List.length ys = 2);
     (match ys with
      | [z; w] ->
        (try
           (* 新しく静的配列を生成できる場合 *)
           let new_sa = 
             (match M.find z env with
              | Const(Int(i)), _ ->
                 (match M.find w env with
                  | Const(cns), _ ->
                     SArr(Id.genlab "s_array", i, cns)
                  | _ -> assert false)
              | _ -> assert false (* 型エラー *)) in
           sarrs := new_sa :: !sarrs;
           Const(Ptr(label_of_sarray new_sa))
         with
           Not_found -> (* 可変長配列の場合など *)
           (* この場合は動的に確保するしかない *)
           ExtFunApp(x, ys))
      | _ -> assert false)
  | If(cmp, x, y, e1, e2) ->
     let e1'= g oc env false e1 in (* if分岐中の配列は静的には取らない *)
     let e2' = g oc env false e2 in
     If(cmp, x, y, e1', e2')
  | Let(xt, Put(y, z, w), e2) when is_glbl && M.mem y env ->
     (* globalで書き込みを見つけたポインタをdirtyにする *)
     (* globalでない領域ではderefの中身での置き換えは行わないのでPutは無視して良い *)
     let ptr = fst (M.find y env) in
     let env' = M.add y (ptr, true) env in (* 書き込みを見つけたら以降は中身で置き換えない *)
     Let(xt, Put(y, z, w), g oc env' is_glbl e2)
  | Let((x, t), e1, e2) ->
     (* 非global領域では静的配列を生成しないので, その場合はこの部分は単なるポインタのコピー伝播になる *)
     let env = 
       (match e1 with
        | If _ | App _ -> (* これらの制御フローのときは簡単のために全てのポインタをdirtyにする *)
           dirty_all env
        | ExtFunApp(y, _) when not (is_create_array y) ->(* 配列生成以外の外部関数はAppと同じ *)
           dirty_all env
        | _ -> env) in
     let e1' = g oc env is_glbl e1 in
     let e2' =
       (match e1' with
        | Const(Ptr (Id.L(l))) as cns -> (* ここはconstFoldみたいなことをしている *)
           Printf.fprintf oc "convert %s to a static pointer labeled %s\n" x l;
           let env' = M.add x (cns, false) env in
           g oc env' is_glbl e2
        | Const _ as cns ->
           let env' = M.add x (cns, false) env in
           g oc env' is_glbl e2
        | _ -> (* e1'がconstでないときは環境に追加しない *)
           g oc env is_glbl e2) in
     (* arrs2の配列はarrs1の配列を要素に持つ可能性があるので以下の順番で *)
     Let((x, t), e1', e2')
  | Var(x) -> (* メイン. 静的に取れることがわかった配列・組をメモリ領域へのポインタで置き換える *)
     (* この操作はglobalでない領域でも行う *)
     (try fst (M.find x env) with Not_found -> Var(x))
  | LetRec({ name = xt; args = yts; body = e1 }, e2) ->
     (* 関数が配列や定数になることはないので環境を更新する必要はない *)
     (* 関数内で生成される配列は静的に取れない *)
     let e1' = g oc env false e1 in (* 関数中では静的配列を生成しない *)
     let e2' = g oc env is_glbl e2 in
     LetRec({ name = xt; args = yts; body = e1' }, e2')
  | Tuple(xs) when is_glbl
                   && List.for_all (fun x -> M.mem x env) xs ->
     let l = Id.genlab "s_tuple" in
     let cnss =
       List.map
         (fun x ->
           match M.find x env with
           | Const(cns), _ -> cns
           | _ -> assert false (* 環境には定数しか追加していない *))
         xs in
     let stpl = STpl(l, cnss) in
     sarrs := stpl :: !sarrs;
     Const(Ptr(l))
  | LetTuple(xts, y, e) ->
     LetTuple(xts, y, g oc env is_glbl e)
  | Get(x, y) when is_glbl
                   && M.mem x env && M.mem y env
                   && not (snd (M.find x env)) (* つまりxはdirtyでない *) ->
     (* dirtyでない静的配列の読み出しは中身で置き換える *)
     (match fst (M.find x env) with
      | Const(Ptr(l)) ->
         (match lookup_sarray !sarrs l with
          | SArr(_, n, cns) ->
             (match fst (M.find y env) with
              | Const(Int(i)) ->
                 assert (0 <= i && i < n); (* 静的に検出可能な配列外参照 *)
                 Const(cns)
              | _ -> assert false (* インデックスは整数値 *))
          | _ -> assert false (* TupleがGetで読み出されることはない *))
      | _ -> assert false (* Getの第一引数はPtr *))
  | Get(x, y) when M.mem x env ->
     (match fst (M.find x env) with
      | Const(Ptr(l)) -> GetL(l, y)
      | _ -> assert false (* 型エラー *))
  | Put(x, y, z) when M.mem x env ->
     (match fst (M.find x env) with
      | Const(Ptr(l)) -> PutL(l, y, z)
      | _ -> assert false)
  | e -> e


let f oc e  =
  sarrs := [];
  let e' = g oc M.empty true e in
  let sarrs = List.rev !sarrs in
  (* List.iter print_sarray sarrs; *)
  e', sarrs
