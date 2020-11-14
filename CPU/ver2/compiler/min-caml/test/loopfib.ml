let rec loop n x y =
  if n <= 0 then x
  else loop (n - 1) y (x + y)
in
let rec fib n =
  loop n 0 1
in
fib 20
