let x = read_int ()
in
let y = read_int ()
in
let rec f n =
  (if n = 0 then
     ()
   else
     (if n = 1 then
        print_char x
      else
        (if n = 2 then
           print_char y
         else
           f (n - 1))))
in
let m = read_int ()
in
f m
