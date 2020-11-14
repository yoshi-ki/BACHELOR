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


let rec f _ = 123 in
let rec g _ = 456 in
let rec h _ = 789 in

let x = f () in
let y = g () in
print_int ((if h () = 0 then x + 1 else y + 2) + x + y)
(* then節ではxがr0でyがスタックに、else節ではyがr0でxがスタックにある *)
