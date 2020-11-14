open Enums

type code_t = instr list (* 単純命令のリストとしてブロック中の命令列を表現 *)
and instr = { instr_id : Id.t; op : op_t}
and op_t = (* 単純命令の表現するデータ型 x <- op(xs) の形 *)
  | Phi of (Id.t * Type.t) * (Id.t * Id.l) list
  | Nop
  | Set of (Id.t * Type.t) * int
  | SetF of (Id.t * Type.t) * float
  | SetL of (Id.t * Type.t) * Id.l
  | ILd of (Id.t * Type.t) * Id.l
  | Mov of (Id.t * Type.t) * Id.t     
  | Neg of (Id.t * Type.t) * Id.t
  | Itof of (Id.t * Type.t) * Id.t
  | In of (Id.t * Type.t)
  | Fin of (Id.t * Type.t)
  | Out of Id.t
  | AddI of (Id.t * Type.t) * Id.t * int
  | Add of (Id.t * Type.t) * Id.t * Id.t
  | Sub of (Id.t * Type.t) * Id.t * Id.t
  | Mul of (Id.t * Type.t) * Id.t * Id.t
  | Div of (Id.t * Type.t) * Id.t * Id.t
  | SLL of (Id.t * Type.t) * Id.t * Id.t
  | SLLI of (Id.t * Type.t) * Id.t * int
  (* | SRL of (Id.t * Type.t) * Id.t * Id.t *)
  | SRLI of (Id.t * Type.t) * Id.t * int
  | Ld of (Id.t * Type.t) * Id.t * int (* Ld(x,y,imm) = x <- y + imm *)
  | St of Id.t * Id.t * int
  | FMov of (Id.t * Type.t) * Id.t
  | Ftoi of (Id.t * Type.t) * Id.t
  | FNeg of (Id.t * Type.t) * Id.t
  | Floor of (Id.t * Type.t) * Id.t
  | FSqrt of (Id.t * Type.t) * Id.t
  | FAdd of (Id.t * Type.t) * Id.t * Id.t
  | FSub of (Id.t * Type.t) * Id.t * Id.t
  | FMul of (Id.t * Type.t) * Id.t * Id.t
  | FDiv of (Id.t * Type.t) * Id.t * Id.t
  | LdF of (Id.t * Type.t) * Id.t * int (* Ld(x,y,imm) = x <- y + imm *)
  | StF of Id.t * Id.t * int
  | CallCls of (Id.t * Type.t) * Id.t * Id.t list * Id.t list
  | CallDir of (Id.t * Type.t) * Id.l * Id.t list * Id.t list
  | Entry of Id.t * Id.t list * Id.t list (* 関数のentry point; int_arg_list, float_arg_list *)
  | Return of (Id.t * Type.t) (* プログラムの答えを返す命令; ルーチンの最後につく *)
  | Save of Id.t (* regname * ident *)
  | Restore of Id.t

let new_iid _ = Id.genid "I" (* generate new instruction id *)
let new_instr operation = { instr_id = new_iid (); op = operation }

type block = { mutable label : Id.l;
               mutable l_dep : int; (* ブロックのloop depthを記録しておいてのちの最適化に利用する *)
               mutable code : code_t;
               mutable prev : block list;
               mutable next : next_t }
and next_t = Brc of compare_t * block ref * block ref (* branch *)
           | Cnfl of block ref (* confluence *)
           | Loop of block ref * block ref
           (* next block * the first block after loop *)
           (* entering into loop *)
           | Back of Id.l * block ref (* loop back *)
           | End of bool (* end of the flow *) (* retかretlかのbool値をもつ *)
and compare_t = { branch : Type.t * cmp; args : Id.t * Id.t } (* 比較分岐演算の種類と引数の情報をもつデータ型 *)

type prog = Prog of MemAlloc.t list * (Id.l * Asm.data_t) list *
                      (block list) list * block list

let loop_depth = ref 0 (* これを参照してブロックを作る *)

let label_of_block block =
  let Id.L(l) = block.label in l

let next_blocks block =
  match block.next with
  | Brc (_, br1, br2) -> [!br1; !br2]
  | Cnfl (br) -> [!br]
  | Loop (br, _) -> [!br]
  | Back (_, br) -> [!br]
  | End _ -> []

let nontail_simple_instr xt = function
  | Asm.Nop -> new_instr Nop
  | Asm.Set(i) -> new_instr (Set(xt, i))
  | Asm.SetF(f) -> new_instr (SetF(xt, f))
  | Asm.SetL(l) -> new_instr (SetL(xt, l))
  | Asm.ILd(l) -> new_instr (ILd(xt, l))
  | Asm.Mov(y) -> new_instr (Mov(xt, y))
  | Asm.Neg(y) -> new_instr (Neg(xt, y))
  | Asm.Itof(y) -> new_instr (Itof(xt, y))
  | Asm.In(y) -> new_instr (In(xt))
  | Asm.Fin(y) -> new_instr (Fin(xt))
  | Asm.Out(y) -> new_instr (Out(y))
  | Asm.AddI(y, i) -> new_instr (AddI(xt, y, i))
  | Asm.Add(y, z) -> new_instr (Add(xt, y, z))
  | Asm.Sub(y, z) -> new_instr (Sub(xt, y, z))
  | Asm.Mul(y, z) -> new_instr (Mul(xt, y, z))
  | Asm.Div(y, z) -> new_instr (Div(xt, y, z))
  | Asm.SLL(y, z) -> new_instr (SLL(xt, y, z))
  | Asm.SLLI(y, i) -> new_instr (SLLI(xt, y, i))
  | Asm.SRL(y, z) -> assert false;
  (* new_instr (SRL(xt, y, z)) *)
  | Asm.SRLI(y, i) -> new_instr (SRLI(xt, y, i))
  | Asm.Ld(y, i) -> new_instr (Ld(xt, y, i))
  | Asm.St(y, z, i) -> new_instr (St(y, z, i))
  | Asm.FMov(y) -> new_instr (FMov(xt, y))
  | Asm.Ftoi(y) -> new_instr (Ftoi(xt, y))
  | Asm.FNeg(y) -> new_instr (FNeg(xt, y))
  | Asm.Floor(y) -> new_instr (Floor(xt, y))
  | Asm.FSqrt(y) -> new_instr (FSqrt(xt, y))
  | Asm.FAdd(y, z) -> new_instr (FAdd(xt, y, z))
  | Asm.FSub(y, z) -> new_instr (FSub(xt, y, z))
  | Asm.FMul(y, z) -> new_instr (FMul(xt, y, z))
  | Asm.FDiv(y, z) -> new_instr (FDiv(xt, y, z))
  | Asm.LdF(y, i) -> new_instr (LdF(xt, y, i))
  | Asm.StF(y, z, i) -> new_instr (StF(y, z, i))
  | Asm.CallCls(y, zs, ws) -> new_instr (CallCls(xt, y, zs, ws))
  | Asm.CallDir(l, ys, zs) -> new_instr (CallDir(xt, l, ys, zs))
  | _ -> assert false (* If, Loop are not simple & Jump isn't tail_instr *)

(* phi関数で関係つく変数を保存しておくためのデータ型 *)
type equiv_ids_t = (Id.t * (Id.t * Id.l) list) list (* refleshする前の変数名とrefleshした変数名とラベルの組 *)
type flow_t = { b : block; bref : block ref; equiv_ids : equiv_ids_t } (* make_cfgなどの関数の返り値のためのデータ型 *)

let rename_equiv_ids equiv_ids x =
  match equiv_ids with
  | [(y, zls)] -> [(x, zls)]
  | _ -> assert false
            
let dummy_block = { label = Id.L("0"); l_dep = 0; code = []; prev = []; next = End(false) } (*  領域を確保するためのダミーブロック *)


let insert_moves yzts =
  List.fold_right
    (fun (y, z, t) (yzs', substs) ->
      let z' = Id.genid y in
      ((y, z') :: yzs', (new_instr (Mov((z', t), z))) :: substs))
    yzts ([], [])
                
            
(* 末尾の単純命令が束縛変数の名前変えを担当する *)
(* 末尾はブロックを生成する *)
let tail_simple_exp_to_flow : (Id.t * Type.t) -> Asm.exp -> flow_t =
  fun (x, t) ->
  function (* nontail_simple_instrと異なり, 返り値はinstr list型 *)
  | Asm.Jump(yzts, l) ->
     (* JumpはMov命令+ブロックのjump backフローになる *)
     let yzs', moves = insert_moves yzts in
     let l' = Id.genid "tail_b" in
     let new_equiv_ids = List.fold_right
                           (fun (y, z) acc -> (y, [(z, Id.L(l'))]) :: acc)
                           yzs' [] in
     let new_bref = ref dummy_block in
     let new_b = { label = Id.L(l'); l_dep = !loop_depth;
                   code = moves; prev = []; next = Back(l, new_bref) } in
     { b = new_b; bref = new_bref; equiv_ids = new_equiv_ids }
  | e ->
     let x' = Id.genid x in (* ここで末端の束縛変数をrenamesする -> 合流の時にphiで繋ぐ *)
     let l = Id.genid "tail_b" in
     let new_equiv_ids = [(x, [(x', Id.L(l))])] in (* rename前, rename後 *)
     let new_bref = ref dummy_block in
     let instr = nontail_simple_instr (x', t) e in
     let new_b = { label = Id.L(l); l_dep = !loop_depth;
                   code = [instr]; prev = []; next = Cnfl(new_bref) } in
     { b = new_b; bref = new_bref; equiv_ids = new_equiv_ids }

let minimize_phi = function (* phi命令の引数を必要最小限にする *)
  | Phi((x, t), yls) ->
     let yls' =  List.find_all (fun (y, _) -> y <> x) yls in
     Phi((x, t), yls') (* ここで，yls'の長さが2以上である時は，ループ中での代入が起こるのでsave, restoreが必要 *)
  | _ -> assert false

let eliminate_phi = function (* 不必要なphi命令を削除する *)
  (* loop_routineとの兼ね合いから，これをminimize_phiに含めないほうがよくなった *)
  | Phi((_, t), _) when t = Type.Unit -> [] (* unit型の合流にphi命令は必要ない *)
  | Phi((x, t), yls) ->
     (match yls with
      | [] -> []
      | _ -> [new_instr (Phi((x, t), yls))])
  | _ -> assert false

let phi_cnfl_if : (Id.t * Type.t) -> equiv_ids_t -> code_t =
  fun (x,t) equiv_ids ->
  match equiv_ids with
  | [(y, yls)] when x = y -> eliminate_phi (minimize_phi (Phi((x, t), yls)))
  | _ -> assert false

let phi_back_loop : (Id.t * Type.t) list -> Id.t list -> equiv_ids_t
                    -> Id.l -> instr list * instr list =
  (* labelは上からの流れ *)
  fun xts ys equiv_ids label ->
  List.iter2 (fun (x, _) (z, _) -> assert (x = z)) xts equiv_ids;
  let ys' = List.map Id.genid ys in
  let yls = List.map (fun y -> (y, label)) ys' in
  let equiv_ids = List.map2 (fun yl (z, zls) -> (z, yl :: zls)) yls equiv_ids in
  let phis = List.map2 (fun xt (_, zls) -> Phi(xt, zls)) xts equiv_ids in
  (* List.concat (List.map minimize_phi phis) *)
  let yts' = List.map2 (fun (_, t) y' -> (y', t)) xts ys' in
  let movs = List.map2 (fun yt' y ->  new_instr (Mov(yt', y))) yts' ys in
  let phis = List.map new_instr (List.map minimize_phi phis) in
  movs, phis


let flow_classify : flow_t list -> (flow_t list * flow_t list) =
  fun flws -> (* cnfl, back に分解 *)
  List.fold_left
    (fun (x,y) flw -> match (flw.b).next with
                    | Cnfl _ -> (flw :: x, y) (* Cnflは第一要素のリストに追加 *)
                    | Back _ -> (x, flw :: y) (* Backは第二要素 *)
                    | _ -> assert false) ([],[]) flws  

let join_flows : flow_t list -> block -> unit =
  (* i.e., prsとnext_blockを繋ぐ *)
  (* これはmake_cfgのbase caseの役目 *)
  fun prs next_b ->
  List.iter (fun flw ->
      match (flw.b).next with
      | Brc _ | Cnfl _ | Loop _ ->
         flw.bref := next_b; next_b.prev <- flw.b :: next_b.prev
      | _ -> assert false) prs

let join_back_flows : flow_t list -> block -> unit =
  (* backsをループの先頭ブロックであるloop_bに繋ぐ *)
  fun backs loop_b ->
  let Id.L(l) = loop_b.label in
  List.iter (* backsとloop_bを繋ぐ *)
    (fun flw ->
      match (flw.b).next with
      | Back(Id.L(l'), _) when l = l' ->
         flw.bref := loop_b; loop_b.prev <- flw.b :: loop_b.prev
      | _ -> assert false) backs (* これには他のループへのbackが上がってきた場合も含まれる *)  

let collect_cnfl_equiv_ids cnfl equiv_ids =
  let x, xls = (match equiv_ids with
                | [(x, xls)] -> x, xls
                | _ -> assert false) in
  let equiv_ids = match (cnfl.b).next with Cnfl _ -> cnfl.equiv_ids | _ -> assert false in
  match equiv_ids with
  | [(y, yls)] when x = y -> [(x, yls @ xls)]
(* | _ -> assert false *)
  | _ -> raise Not_found

let cnfl_return_equiv_ids : flow_t list -> equiv_ids_t =
  function
  | flw :: cnfls ->
     let equiv_ids = flw.equiv_ids in
     List.fold_right collect_cnfl_equiv_ids cnfls equiv_ids
  | _ -> assert false

let collect_back_equiv_ids back acc =
  let equiv_ids = match (back.b).next with Back _ -> back.equiv_ids | _ -> assert false in
  List.map2
    (fun (x, lxs) (y, lys) ->
      if x = y then (x, lxs @ lys)
      else assert false) acc equiv_ids

let back_return_equiv_ids : flow_t list -> equiv_ids_t =
  fun backs ->
  match backs with
  | flw :: backs ->
     List.fold_right (fun flw acc -> collect_back_equiv_ids flw acc) backs flw.equiv_ids
  | _ -> assert false

let make_block_prel prs = (* ループの手前に挿入するブロックを新しく生成する *)
  let c = [] in
  let l = Id.genid "preloop_b" in
  let br1 = ref dummy_block in
  let br2 = ref dummy_block in
  let sc = Loop(br1, br2) in
  let new_b = { label = Id.L(l); l_dep = !loop_depth;
                code = c; prev = []; next = sc } in
  join_flows prs new_b;
  new_b, br1, br2

let make_block_postl prs = (* ループの直後に挿入するブロックを新しく生成 *)
  let l = Id.genid "postloop_b" in
  let br = ref dummy_block in
  let sc = Cnfl(br) in

  (* let new_b = { label = Id.L(l); l_dep = !loop_depth;
   *               code = restores; prev = []; next = sc } in *)
  let new_b = { label = Id.L(l); l_dep = !loop_depth;
                code = []; prev = []; next = sc } in

  join_flows prs new_b;
  new_b, br
  
let make_branching_block prs ty cmp x y = (* 分岐の起点となるbranching blockを新しく生成して *)
  (* それとprsを双方向に繋ぎ, 分岐先2つへの参照とともに返す *)
  let c = [] in
  let l = Id.genid "branching_b" in
  let b_l = ref dummy_block in
  let b_r = ref dummy_block in
  let compr = { branch = (ty, cmp); args = (x,y) } in
  let sc = Brc(compr, b_l, b_r) in (* nextはdummyで取るしかない *)
  (* refを実行する度に領域が新しく確保されるから，上の２つのdummy_blockはaliasしてないはず! *)
  (* nextを繋ぐのはsuper routineの責任 *)
  let new_b = {label = Id.L(l); l_dep = !loop_depth; code = c; prev = []; next = sc} in (* 新しいブロックを作成 *)
  (* 上で，new_b -> prsは繋いだ *)
  join_flows prs new_b; (* ここで, prs -> new_bを繋ぐ *)
  new_b, (b_l, b_r)  (* new_bと2つの分岐先への参照を返す *)

let rec make_cfg : flow_t list -> (Id.t * Type.t) -> Asm.t -> block * flow_t list  =
  (* prsは出口ブロックと出口ブロッックの下に繋ぐブロックへの参照の組みのリスト*)
  (* Asm.t型の値からcfgを構成し, １つの入口ブロックと出口フロー(next_t型)のリストを返す *)
  (* 出口フローとして帰ってくるのはCnflとBackのみ. それ以外はassertする *)
  fun prs xt ->
  function (* xt is the variable to which the anser of a code should be bound *)
  | Asm.Let(yt, ((Asm.If _ | Asm.FIf _) as exp), e) ->
     let new_b, bts = if_routine prs yt exp in
     let cnfls, backs = flow_classify bts in
     assert (backs = []);
     (* Ifの分岐の末端全てはconfl; c.f.１つ上の注意 *)
     let bh, bts' = make_cfg cnfls xt e in (* ここで帰ってきたbhの先頭にphi関数を挿入する *)
     (* phi関数を挿入するブロックはcnflsを繋いだブロック. つまりbh *)
     let equiv_ids = cnfl_return_equiv_ids cnfls in
     let phi = phi_cnfl_if yt equiv_ids in
     bh.code <- phi @ bh.code;
     new_b, bts' (* 入口ブロックはnew_b, 出口フローはeの出口フローのbts' *)
  | Asm.Let(yt, (Asm.Loop _ as exp) ,e) ->
     let pre_l, bts = loop_routine prs yt exp in
     (* pre_l is a preloop block -> c.f. loop_routine *)
     let cnfls, backs = flow_classify bts in
     assert (backs = []); (* 上がってくるbacksは全てloop_routine内で処理しているはずである *)
     (* 他のループのbackが帰ってくることがないことを保証したループ化を行なっている *)
     let bh', bts' = make_cfg cnfls xt e in
     let equiv_ids = cnfl_return_equiv_ids cnfls in
     let phi = phi_cnfl_if yt equiv_ids in
     bh'.code <- phi @ bh'.code; (* loop_routine内で合流させた分を直列に繋ぐ *)
     pre_l, bts'
  | Asm.Let(yt, exp, e) -> (* expは非末尾の単純命令である *)
     let instr = nontail_simple_instr yt exp in
     (* nontail_simple_instrは変数のrefleshの必要はない *)
     let bh, bts = make_cfg prs xt e in
     bh.code <- instr :: bh.code; (* codeの先頭に単純命令を追加する *)
     bh, bts
  | Asm.Ans((Asm.If _ | Asm.FIf _) as exp) ->
     if_routine prs xt exp 
  | Asm.Ans(Asm.Loop _ as exp) ->
     let pre_l, bts = loop_routine prs xt exp in
     let cnfls, backs = flow_classify bts in
     assert (backs = []);
     pre_l, cnfls
  | Asm.Ans(exp) -> (* 末尾の単純命令の時 *) (* これがbase case *)
     let flw = tail_simple_exp_to_flow xt exp in (* flw.b = new_b *)
     join_flows prs flw.b; (* 新しいブロックとprsを繋ぐ *)
     flw.b, [flw]

     
and if_routine prs yt exp =
  let ty = (match exp with Asm.If _ -> Type.Int | Asm.FIf _ -> Type.Float | _ -> assert false) in
  (match exp with
   | Asm.If(cmp,z,w,e1,e2) | Asm.FIf(cmp,z,w,e1,e2) ->
      let new_b, (b_l, b_r) = make_branching_block prs ty cmp z w in (* あとでphi関数を挿入するブロック *)
      let flw_l = { b = new_b; bref = b_l; equiv_ids = [] } in
      let flw_r = { b = new_b; bref = b_r; equiv_ids = [] } in
      let _, bt1s = make_cfg [flw_l] yt e1 in (* 答えを束縛する変数はyt *)
      let _, bt2s = make_cfg [flw_r] yt e2 in (* bt1s/bt2s : next_t list *)
      new_b, (bt1s @ bt2s)
   | _ -> assert false)

and resolve_phis phis zts ws = (* 不必要なphi命令を削除し，必要なsave, restoreを計算する *)
  let zws = List.map2 (fun (z, _) w -> (z, w)) zts ws in
  let phis', saves, restores =
    List.fold_left2
      (fun (phis', saves, restores) phi (z, w) ->
        match phi with
        | Phi((_, t), _) when t = Type.Unit ->
           (phis', saves, restores) (* unit型の時はphi命令自体を削除 *)
        | Phi(_, yls) -> (* ylsの長さは1以上であることが保証されている *)
           let ys = List.map fst yls in
           assert (List.mem w ys);
           let len = List.length ys in
           if len > 1 then (* これはループにおいて下からの合流があることを意味するので，save, restoreが必要 *)
             (new_instr phi :: phis',
              (new_instr (Save(w))) :: saves,
              (new_instr (Restore(w))) :: restores) (* phi命令はもちろん必要 *)
           else if len = 1 then
             (new_instr phi :: phis', saves, restores) (* ループ中で変更されないなら，save, restoreは必要ない *)
               (* phi命令は生存区間の合併のために必要 *)
           else (* len = 0 *)
             assert false (* 少なくともループへ侵入するときの変数の束縛があるので，これはありえない *)
        | _ -> assert false)
      ([], [], []) phis zws in
  (List.rev phis', List.rev saves, List.rev restores) (* 一応綺麗にしたい... *)
             
  
and loop_routine prs yt exp =
  (match exp with
   | Asm.Loop(Id.L(l), zts, ws, e') -> (* ループのラベルlをそのままブロックのラベルにすれば良い *)
      let pre_b, br1, br2 = make_block_prel prs in (* ループの前に挿入する新しいブロック *)
      (* ---- loop start ---- *)
      incr loop_depth; (* loop_depthを１つ上げる *)
      let flw = { b = pre_b; bref = br1; equiv_ids = [] } in
      let looptop, bts = make_cfg [flw] yt e' in
      (* looptopはループの入口ブロック. ここにloopbackのphi関数を挿入 *)
      let cnfls, backs = flow_classify bts in
      let equiv_ids = back_return_equiv_ids backs in
      (* 上がってきた代入をphiでlooptopに吸収 *)
      let movs, phis = phi_back_loop zts ws equiv_ids pre_b.label in
      (* pre_b.labelは上からの流れのラベル, この情報だけflowにはない *)
      (* let phis, saves, restores = resolve_phis phis zts ws in *)
      (* let L(l') = looptop.label in
       * Format.eprintf "changed label %s to %s@." l' l; *)

      (* pre_b.code <- pre_b.code @ saves; (\* preloop blockにsaveを挿入する *\) *)
      pre_b.code <- pre_b.code @ movs;
      looptop.label <- Id.L(l); (* looptopのラベルをループのラベルにする *)

      looptop.code <- phis @ looptop.code;
      join_back_flows backs looptop; (* backsをlooptopに繋ぐ *)
      decr loop_depth; (* もとのルーチンに復帰する前にloop_depthを戻す *)
      (* ---- loop end ---- *)
      (* let post_b, br = make_block_postl cnfls restores in *)
      let post_b, br = make_block_postl cnfls in
      (* ループ後の処理を担当するブロック *)
      br2 := post_b;
      let equiv_ids =
        try cnfl_return_equiv_ids cnfls
        with Not_found -> assert false in
      let y', _ as yt' = (fun (y, t) -> (Id.genid y, t)) yt in
      let equiv_ids' = rename_equiv_ids equiv_ids y' in
      (* equiv_idsの代表元をy'に変更 *)
      (* 一旦y'に集約する *)
      let phi = phi_cnfl_if yt' equiv_ids' in
      (* let phi = phi_cnfl_if yt equiv_ids in *)
      post_b.code <- (new_instr Nop) :: phi @ post_b.code;
      (* post_bの先頭にloop後の合流のphiを挿入 *)
      (* このNopからループ後の生存変数の情報を取る *)
      let flw' = { b = post_b; bref = br;
                   equiv_ids = [(fst yt, [y', Id.L(label_of_block post_b)])] } in
      pre_b, [flw'] (* save, restoreは処理したので，あとはこの2つを繋いでもらう *)
   | _ -> assert false)


(* cfg_db.ml中の関数をcfg用に再定義 *)
let is_visited tbl block =
  (* すでに訪れた頂点ならtrueを返し, そうでなければ表にtrueを書き込んでfalseを返す *)
  let l = label_of_block block in
  try
    H.find tbl l
  with
    Not_found -> H.add tbl l true; false

let check_next color_tbl block =
  let is_not_visited x = not (is_visited color_tbl x) in
  List.filter is_not_visited (next_blocks block)

let rec bfs queue color_tbl acc =
  if Queue.is_empty queue then
    List.rev acc (* 訪問した順番に直したリストを返す *)
  else
    let b = Queue.pop queue in
    let bs = check_next color_tbl b in
    List.iter (fun x -> Queue.push x queue) bs;
    bfs queue color_tbl (bs @ acc)
  
let scan_cfg entry ret =
  let color_tbl = H.create 50000 in
  let queue = Queue.create () in
  Queue.push entry queue;
  let l = label_of_block entry in
  H.add color_tbl l true;
  bfs queue color_tbl [entry]
(* ---- from cfg_db.ml ---- *)


let e_to_cfg l xt int_args float_args e is_ret =
  assert (!loop_depth = 0);
  let return_label = Id.genid "return_point" in
  let c = if is_ret then
            []
          else
            [new_instr (Entry(l, int_args, float_args))] in
  let new_bref = ref dummy_block in
  let entry_block = { label = Id.L(l);
                      l_dep = !loop_depth;
                      code = c;
                      prev = [];
                      next = Cnfl(new_bref) } in
  let flw = { b = entry_block; bref = new_bref; equiv_ids = [] } in
  let _, bts = make_cfg [flw] xt e in
  let cnfls, backs = flow_classify bts in 
  assert (backs = []); (* entry pointまでループバックが上がってくることはない *)
  let equiv_ids = cnfl_return_equiv_ids cnfls in
  let phi = phi_cnfl_if xt equiv_ids in
  assert (!loop_depth = 0);
  let ret = if snd xt = Type.Unit then [] else [new_instr (Return(xt))] in
  let return_block = { label = Id.L(return_label); (* 他のblock labelはId.genidを通しているのでかぶる心配はない *)
                       l_dep = !loop_depth;
                       code = phi @ ret;
                       prev = [];
                       next = End(is_ret) } in
  join_flows cnfls return_block;
  let blocks =  scan_cfg entry_block return_block in
  assert ((List.hd blocks).label = Id.L(l));
  blocks

let g = List.map (* 関数をcfgに変換する *)
          (fun { Asm.name = Id.L(l); Asm.args = xs;
                 Asm.fargs = ys; Asm.body = e; Asm.ret = t } ->
            let ret_v = Id.genid "ret_val" in
            e_to_cfg l (ret_v, t) xs ys e false)

let f (Asm.Prog(mems, data, fundefs, e)) ty =
  let fn_cfgs = g fundefs in
  let l = Id.genid "main" in
  let xt = (Id.gentmp ty, ty) in
  let main_cfg = e_to_cfg l xt [] [] e true in
  Prog (mems, data, fn_cfgs, main_cfg)
