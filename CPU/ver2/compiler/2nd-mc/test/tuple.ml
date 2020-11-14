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

let x = (1, 33.0, 19, 22.0)
in
let (a0, a1, a2, a3) = x in
print_int a0;
print_char 10;
print_int (int_of_float a1);
print_char 10;
print_int a2;
print_char 10;
print_int (int_of_float a3);
print_char 10
