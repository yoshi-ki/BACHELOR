let rec print_int x =
  (* let a = x / 100 in *)
  let a = ((x + 1) * 655) lsr 16 in
  (* let b = (x - a * 100) / 10 in *)
  let b = (((x - a * 100) + 1) * 6553) lsr 16 in
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

print_int 255

(* let rec loop i =
 *   if i > 255 then
 *     ()
 *   else
 *     (print_int i;
 *      print_char 10;
 *      loop (i+1))
 * in
 * 
 * loop 0 *)
  
    
