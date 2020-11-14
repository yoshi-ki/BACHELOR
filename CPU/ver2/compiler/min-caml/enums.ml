type cmp = Eq | NE | LE | Lt

let print_cmp = function
  | Eq -> print_string "Eq"
  | NE -> print_string "NE"
  | LE -> print_string "LE"
  | Lt -> print_string "Lt"
