let size = 100
in

let rec write_ppm_header _ =
  (
    print_char 80; (* 'P' *)
    print_char (48 + 3); (* +6 if binary *) (* 48 = '0' *)
    print_char 10;
    (* print_int size; *)
    print_char 32;
    (* print_int size; *)
    print_char 32;
    (* print_int 255; *)
    print_char 10
  )
in

write_ppm_header ()
