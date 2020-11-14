open MemAlloc
   
let reg_zero = "%r0"
let reg_hp = "%r27"
   
let load_imm_to_reg oc reg = function
  | I(i) ->
     Printf.fprintf oc "\taddi\t%s %s %d\n" reg_zero reg i
  | IL(l) ->
     Printf.fprintf oc "\tilw\t%s %s %s\n" reg_zero reg l
  | FL(l) ->
     Printf.fprintf oc "\tilw.s\t%s %s %s\n" reg_zero reg l
  | F _ -> assert false (* 浮動小数の即値をロードする命令はない *)


let f : out_channel -> memtbl_t -> MemAlloc.t list -> unit =
  fun oc memtbl mems ->
  (* 第4引数のmemtblは必ず必要ではないが，デバッグに使いたい *)
  let li = load_imm_to_reg oc in
  List.iter
    (function
     | A(l, n, cns) -> (* labelは今は使ってない. デバッグ用に出力してもいいかも *)
        let addr = lookup_addr memtbl l in
        (match cns with
         | I _ | IL _ ->
            li "%r1" (I(addr));
            (* Printf.fprintf oc "\tbne\t%%r1 %%r27 program_end\n"; *)
            li "%r1" (I(n));
            li "%r2" cns;
            Printf.fprintf oc "\tjal\tmin_caml_create_array\n";
         | F _ | FL _ ->
            li "%r1" (I(addr));
            (* Printf.fprintf oc "\tbne\t%%r1 %%r27 program_end\n"; *)
            li "%r1" (I(n));
            li "%f0" cns;
            Printf.fprintf oc "\tjal\tmin_caml_create_float_array\n")
     | T(l, cnss) ->
        let addr = lookup_addr memtbl l in
        li "%r1" (I(addr));
        (* Printf.fprintf oc "\tbne\t%%r1 %%r27 program_end\n"; *)
        let top =
          List.fold_left
            (fun ofs cns ->
              match cns with
              | I _ | IL _ ->
                 li "%r1" cns;
                 Printf.fprintf oc "\tsw\t%s %%r1 %d\n" reg_hp ofs;
                   (ofs + 4)
              | F _ | FL _ ->
                 li "%f0" cns;
                 Printf.fprintf oc "\tsw.s\t%s %%f0 %d\n" reg_hp ofs;
                 (ofs + 4))
            0 cnss in
        Printf.fprintf oc "\taddi\t%s %s %d\n" reg_hp reg_hp top)
    mems
  (*   mems;
   * li "%r1" (I(79));
   * Printf.fprintf oc "\tout\t%%r1\n";
   * li "%r1" (I(75));
   * Printf.fprintf oc "\tout\t%%r1\n";
   * li "%r1" (I(10));
   * Printf.fprintf oc "\tout\t%%r1\n";
   * Printf.fprintf oc "\tj\tprogram_end\n" *)
