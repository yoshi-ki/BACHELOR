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

let rec inprod v1 v2 acc i =
  if i < 0 then acc else
  inprod v1 v2 (acc +. v1.(i) *. v2.(i)) (i - 1) in
let v1 = create_array 3 1.23 in
let v2 = create_array 3 4.56 in
print_int (int_of_float (1000000. *. inprod v1 v2 0. 2))
