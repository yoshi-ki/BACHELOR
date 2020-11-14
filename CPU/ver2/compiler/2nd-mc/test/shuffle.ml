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

let rec foo a b c d e f =
  print_int a;
  print_int b;
  print_int c;
  print_int d;
  print_int e;
  print_int f in
let rec bar a b c d e f =
  foo b a d e f c in
let x1 = read_int ()
in
let x2 = read_int ()
in
let x3 = read_int ()
in
let x4 = read_int ()
in
let x5 = read_int ()
in
let x6 = read_int ()
in
let x7 = read_int ()
in
let x8 = read_int ()
in
let a = bar 1 2 3 4 5 6
in
x1 + x2 + x3 + x4
