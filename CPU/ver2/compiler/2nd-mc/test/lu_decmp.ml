let print_char x = print_char (char_of_int x)
in

let rec print_int x =
  let a = x / 100 in
  let b = (x - a * 100) / 10 in
  let c = (x - a * 100 - b * 10) in
  if a > 0 then (
    print_char (a + 48);
    print_char (b + 48);
    print_char (c + 48)
  ) else (
    if b > 0 then (
      print_char (b + 48);
      print_char (c + 48)
    ) else (
      print_char (c + 48)
    )
  )
in


let rec read_matrix mat i n =
  if i = n then
   ()
  else
    let row = Array.make n 0.0 in
    let rec read_row row i n =
      if i = n then
        ()
      else
        (row.(i) <- read_float ();
         read_row row (i+1) n)
    in
    read_row row 0 n;
    mat.(i) <- row;
    read_matrix mat (i+1) n
in

let rec make_matrix n =
  let mat = Array.make n (Array.make n 0.0) in
  read_matrix mat 0 n;
  mat
in

let rec print_matrix mat i j n =
  if i >= n then
    ()
  else if j >= n then
    (print_char 10;
     print_matrix mat (i+1) 0 n)
  else
    (print_char 32;
     let t = mat.(i).(j) in
     print_int (int_of_float t);
     print_matrix mat i (j+1) n)
in

let rec lu_decmp2 i k l n mat =
  try
    if k >= n then
      ()
    else if l >= n then
      lu_decmp2 i (k+1) 0 n mat
    else
      (mat.(k).(l) <- mat.(k).(l) -. mat.(i).(l) *. mat.(k).(i);
       lu_decmp2 i k (l+1) n mat)
  with
    Invalid_argument _ ->
    Printf.printf "%d %d %d\n" i k l;
in

let rec lu_decmp1 i j n mat m =
  try
    if j >= n then
      ()
    else if i >= n then
      (lu_decmp2 j (j+1) (j+1) n mat;
       let m = 1.0 /. mat.(j).(j) in
       lu_decmp1 (j+1) (j+1) n mat m)
    else 
      (mat.(i).(j) <- mat.(i).(j) *. m;
       lu_decmp1 (i+1) j n mat m)
  with
    Invalid_argument _ ->
    Printf.printf "%d %d\n" i j;
in

let rec main _ =
  let size = 10 in
  let mat = (Array.make size (Array.make size 0.0)) in
  read_matrix mat 0 size;
  Printf.printf "input\n";
  lu_decmp1 0 0 size mat mat.(0).(0);
  Printf.printf "compute\n";
  print_matrix mat 0 0 size;
  Printf.printf "end\n";
in

main ()
