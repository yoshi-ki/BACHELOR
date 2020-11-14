let limit = ref 0
let limit2 = ref 10

let rec iter n e = (* 最適化処理をくりかえす (caml2html: main_iter) *)
  Format.eprintf "iteration %d@." n;
  if n = 0 then e else
    let e' = Elim.f (ConstFold.f (Inline.f (Assoc.f (Beta.f e)))) in
    if e = e' then e else
      iter (n - 1) e'

let rec iter2 n e = (* 最適化処理をくりかえす (caml2html: main_iter) *)
  Format.eprintf "iteration %d@." n;
  if n = 0 then e else
    let e' = Elim.f (ConstFold.f (Inline2.f (Assoc.f (Beta.f e)))) in
    if e = e' then e else
      iter2 (n - 1) e'

let print_set set =
  let list = S.elements set in
  List.iter (Printf.printf "%s, ") list;
  print_string "\n"
  

let lexbuf outchan l = (* バッファをコンパイルしてチャンネルへ出力する (caml2html: main_lexbuf) *)
  let out_chan = open_out "heap_map.txt" in
  Inline2.unlimited := true;
  Id.counter := 0;
  Typing.extenv := M.empty;
  let syntax = Parser.exp Lexer.token l in
  let syntax, tp = Typing.f syntax in
  (* Syntax.print_syntax syntax; *)
  let kNormal = Alpha.f (KNormal.f syntax) in
  let kNormal = iter !limit kNormal in
  let kNormal = Assoc.f (iter2 !limit2 kNormal) in
  let kNormal, sarrays = Sarray.f out_chan kNormal in
  let memtbl, mems = MemAlloc.f out_chan sarrays in
  let kNormal = ConstExpand.f kNormal in
  let kNormal = Loop.f kNormal in
  let kNormal = Elim.f (Inline2.f kNormal) in
  Inline2.threshold := 300;
  Inline2.unlimited := false;
  limit2 := 5;
  (* let kNormal = iter2 !limit2 kNormal in *)
  (* let kNormal = Inline2.f (Inline2.f kNormal) in *)
  let virtCode = Simm.f (Virtual.f memtbl mems (Closure.f kNormal)) in
  let virtCode = LoadElim.f virtCode in
  let virtCode = LoadZero.f virtCode in
  let prog = Cfg.f virtCode tp in
  let prog = Load_imm2.f prog in
  Emit2.f outchan memtbl prog
    
  (* Printf.printf "----ANormal----\n";
   * KNormal.print_kNormal kNormal; *)
  (* Emit.f outchan memtbl
   *   (Load_imm.f 
   *      (RegAlloc.f tp
   *         (Simm.f
   *            (Virtual.f memtbl mems
   *               (Closure.f kNormal))))) *)

let string s = lexbuf stdout (Lexing.from_string s) (* 文字列をコンパイルして標準出力に表示する (caml2html: main_string) *)

let compile_mode = ref 0 
let file f = (* ファイルをコンパイルしてファイルに出力する (caml2html: main_file) *)
  let inchan = open_in (f ^ ".ml") in
  let outchan = open_out (f ^ ".s") in
  if !compile_mode = 0 then
  try
    lexbuf outchan (Lexing.from_channel inchan);
    close_in inchan;
    close_out outchan;
  with e -> (close_in inchan; close_out outchan; raise e)
  else if !compile_mode = 1 then
    ()
    (* lexbuf2 outchan (Lexing.from_channel inchan) *)
  else
    assert false

let () = (* ここからコンパイラの実行が開始される (caml2html: main_entry) *)
  let files = ref [] in
  Arg.parse
    [("-inline", Arg.Int(fun i -> Inline.threshold := i), "maximum size of functions inlined");
     ("-iter", Arg.Int(fun i -> limit := i), "maximum number of optimizations iterated");
     ("-iter2", Arg.Int(fun i -> limit2 := i),
      "maximum number of optimizations involving recursive functions iterated");
     (* ("-argmax", Arg.Int(fun i -> Lamlift.argsize_max := i),
      *  "maximum number of arguments functions can have after lambda lifting"); *)
     ("-m", Arg.Unit(fun _ -> compile_mode := 1), "compile mode");
     ("-dfs", Arg.Unit(fun _ -> Cfg_db.scan_mode := 1), "scan mode: 0 -> bfs, 1 -> dfs");
     ("-p", Arg.Unit(fun _ -> Lra2.print_option := true),
      "whether to print intermedeate infomations");
     ("-p2", Arg.Unit(fun _ -> Igraph.print_option := true),
      "whether to print coloring of graphs");
     ("-r", Arg.Unit(fun _ -> Cfg_db.is_reverse := 1), "scan in reverse direction")]
    (fun s -> files := !files @ [s])
    ("Mitou Min-Caml Compiler (C) Eijiro Sumii\n" ^
     Printf.sprintf "usage: %s [-inline m] [-iter n] ...filenames without \".ml\"..." Sys.argv.(0));
  List.iter
    (fun f -> ignore (file f))
    !files
