let x =
  let y = 10 in
  let f = let rec g z = z + y in g in
  let h = f in
  h 5 in
    x
