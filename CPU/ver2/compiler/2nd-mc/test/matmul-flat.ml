(* let print_char x = print_char (char_of_int x)
 * in *)

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

let rec print_newline _ =
  print_char 10
in

let rec loop3 i k j a b c =
  if k < 0 then () else
  (c.(i).(j) <- c.(i).(j) +. a.(i).(k) *. b.(k).(j);
   loop3 i (k - 1) j a b c) in
let rec loop2 i m j a b c =
  if j < 0 then () else
  (loop3 i (m - 1) j a b c;
   loop2 i m (j - 1) a b c) in
let rec loop1 i m n a b c =
  if i < 0 then () else
  (loop2 i m (n - 1) a b c;
   loop1 (i - 1) m n a b c) in
let rec mul l m n a b c =
  loop1 (l - 1) m n a b c in
let dummy = Array.make 0 0. in
let rec init i n mat =
  if i < 0 then () else
  (mat.(i) <- Array.make n 0.;
   init (i - 1) n mat) in
let rec make m n dummy =
  let mat = Array.make m dummy in
  init (m - 1) n mat;
  mat in
let a = make 2 3 dummy in
let b = make 3 2 dummy in
let c = make 2 2 dummy in
a.(0).(0) <- 1.; a.(0).(1) <- 2.; a.(0).(2) <- 3.;
a.(1).(0) <- 4.; a.(1).(1) <- 5.; a.(1).(2) <- 6.;
b.(0).(0) <- 7.; b.(0).(1) <- 8.;
b.(1).(0) <- 9.; b.(1).(1) <- 10.;
b.(2).(0) <- 11.; b.(2).(1) <- 12.;
mul 2 3 2 a b c;
print_int (int_of_float (c.(0).(0)));
print_newline ();
print_int (int_of_float (c.(0).(1)));
print_newline ();
print_int (int_of_float (c.(1).(0)));
print_newline ();
print_int (int_of_float (c.(1).(1)));
print_newline ()
