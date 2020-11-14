(*let rec print_int x =
  let a = x / 100 in
  let b = (x - a * 100) / 10 in
  let c = (x - a * 100 - b * 10) in
  if a > 0 then (
    print_char (a + 48)
  ) else ();
  if b > 0 then (
    print_char (b + 48)
  ) else ();
  print_char (c + 48)
    in
 *)
let rec diverge x y x0 y0 i iter_max =
      let a = x *. x -. y *. y +. x0 in
      let b = 2. *. x *. y +. y0 in
      Printf.printf "%f\n" (a *. a +. b *. b);
      if a *. a +. b *. b > 100. then
        true
      else
        if i = iter_max then
          false
        else
          diverge a b x0 y0 (i+1) iter_max
    in

    let n = 20 in
    let vec = Array.make n (Array.make 3 255) in
    let array = Array.make n vec in
    let rec setup_vec v i =
      if i >= n then
        v
      else
        (v.(i) <- Array.make 3 255;
         setup_vec v (i+1)) in
    let rec setup_array arr j =
      if j >= n then
        ()
      else
        (arr.(j) <- setup_vec (Array.make n (Array.make 3 255)) 0;
         setup_array arr (j+1)) in
    setup_array array 0;
    let rec loop0 arr i j =
      if i >= n then
        ()
      else
        if j >= n then
          loop0 arr (i+1) 0
        else
          ((arr.(i)).(j) <- (Array.make 3 255);
           loop0 arr i (j+1))
    in
    loop0 array 0 0;

    let rec loop1 arr i j =
      (* Printf.printf("here\n"); *)
      if i >= n then
        ()
      else
        if j >= n then
          loop1 arr (i+1) 0
        else
          let x = (4.0 /. (float_of_int n)) *. (float_of_int i) -. 2.0 in
          let y = (4.0 /. (float_of_int n)) *. (float_of_int j) -. 2.0 in
          let iter_max = 100 in
          let v = arr.(i) in
          if diverge 0. 0. x y 0 iter_max then
            (let rgb = v.(j) in
             rgb.(0) <- 0;
             rgb.(1) <- 0;
             rgb.(2) <- 0)
          else
            ();
          loop1 arr i (j+1)
    in
    loop1 array 0 0;
    

    let rec write_rgb rgb =
      print_int rgb.(0);
      print_char ' ';
      print_int rgb.(1);
      print_char ' ';
      print_int rgb.(2);
      print_char '\n'
    in

    let rec loop2 arr x y =
      if x >= n then
        ()
      else
        if y >= n then
          loop2 arr (x+1) 0
        else
          let rgb = (arr.(x)).(y) in
          write_rgb rgb;
          loop2 arr x (y+1)
    in

    loop2 array 0 0
    

                      

    
    
