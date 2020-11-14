let rec sgn x =
  if fiszero x then 0.0
  else if fispos x then 1.0
  else -1.0
in

sgn 2.0
