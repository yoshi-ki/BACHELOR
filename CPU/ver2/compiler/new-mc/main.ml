let limit = ref 0
let limit2 = ref 25

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
  let oc2 = open_out "heap_map.txt" in
  Id.counter := 0;
  Typing.extenv := M.empty;
  let syntax = Parser.exp Lexer.token l in
  let syntax, tp = Typing.f syntax in
  (* Syntax.print_syntax syntax; *)
  let kNormal = Alpha.f (KNormal.f syntax) in
  let kNormal = iter !limit kNormal in
  let kNormal = Assoc.f (iter2 !limit2 kNormal) in
  let kNormal, sarrays = Sarray.f oc2 kNormal in
  let memtbl, mems = MemAlloc.f oc2 sarrays in
  let kNormal = ConstExpand.f kNormal in
  (* Printf.printf "----ANormal----\n";
   * KNormal.print_kNormal kNormal; *)
  Emit.f outchan memtbl tp
    (Load_imm.f 
       (RegAlloc.f tp
          (Simm.f
             (Virtual.f memtbl mems
                (Closure.f kNormal)))));
  close_out oc2

let string s = lexbuf stdout (Lexing.from_string s) (* 文字列をコンパイルして標準出力に表示する (caml2html: main_string) *)

let compile_mode = ref 0 
let file f = (* ファイルをコンパイルしてファイルに出力する (caml2html: main_file) *)
  let inchan = open_in (f ^ ".ml") in
  let outchan = open_out (f ^ ".s") in
  lexbuf outchan (Lexing.from_channel inchan);
  close_in inchan;
  close_out outchan

let () = (* ここからコンパイラの実行が開始される (caml2html: main_entry) *)
  let files = ref [] in
  Arg.parse
    [("-inline", Arg.Int(fun i -> Inline.threshold := i), "maximum size of functions inlined");
     ("-iter", Arg.Int(fun i -> limit := i), "maximum number of optimizations iterated");
     ("-iter2", Arg.Int(fun i -> limit2 := i),
      "maximum number of optimizations involving recursive functions iterated")]
    (fun s -> files := !files @ [s])
    ("Mitou Min-Caml Compiler (C) Eijiro Sumii\n" ^
     Printf.sprintf "usage: %s [-inline m] [-iter n] ...filenames without \".ml\"..." Sys.argv.(0));
  List.iter
    (fun f -> ignore (file f))
    !files
