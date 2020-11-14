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


let x = 4
in
let y = 3
in
let a0 = create_array x (0, 0)
in
let a1 = create_array y 2.0
in

let rec loop1 i n =
  if i = n then
    ()
  else
    (let (s, t) = a0.(i) in
     print_int s;
     print_char 32;
     print_int t;
     print_char 10;
     loop1 (i+1) n)
in

let rec loop2 i n =
  if i = n then
    ()
  else
    (let t = a1.(i) in
     print_int (int_of_float t);
     print_char 10;
     loop2 (i+1) n)
in

loop1 0 4;
loop2 0 3
  
