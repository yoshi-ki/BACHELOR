let rec sum x n acc =
  if n <= 0 then acc
  else sum x (n - 1) (x + acc)
in
let x = read_int ()
in
let y = read_int ()
in
y + sum x y 0
