(* let print_char x = print_char (char_of_int x)
 * in *)

let rec kernel_sin x sgn =
  let y = -.(x *. x) in
  let a = 0.00019587841 *. x in
  let a = 0.008332824 *. x +. a *. y in
  let a = 0.16666668 *. x +. a *. y in
  let a = 1. *. x +. a *. y in
  a *. sgn
in
  
let rec kernel_cos x sgn =
  let y = -.(x *. x) in
  let a = 0.0013695068 in
  let a = 0.04166368 +. a *. y in
  let a = 0.5 +. a *. y in
  let a = 1. +. a *. y in
  a *. sgn
in

let pi = 3.141592653589793
in
     
let rec sin3 x sgn =
  if x <= (pi /. 4.) then
    kernel_sin x sgn
  else
    kernel_cos (pi/.2. -. x) sgn
in

let rec cos3 x sgn =
  if x <= (pi /. 4.) then
    kernel_cos x sgn
  else
    kernel_sin (pi/.2. -. x) sgn
in

let rec sin2 x sgn =
  if x >= (pi /. 2.) then
    sin3 (pi -. x) sgn
  else
    sin3 x sgn
in

let rec cos2 x sgn =
  if x >= (pi /. 2.) then
    cos3 (pi -. x) (-.sgn)
  else
    cos3 x sgn
in

let rec sin x =
  if x >= pi *. 2. then
    sin (x -. pi *. 2.)
  else if x < 0. then
    sin (x +. pi *. 2.)
  else if x >= pi then
    sin2 (x -. pi) (-.1.)
  else
    sin2 x 1.
in

let rec cos x =
  if x >= pi *. 2. then
    cos (x -. pi *. 2.)
  else if x < 0. then
    cos (x +. pi *. 2.)
  else if x >= pi then
    cos2 (x -. pi) (-.1.)
  else
    cos2 x 1.
in

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


let limit = 60 (* maximum number of iterations *)
in

let size = 512
in

let rec cadd x y =
  let (rex, imx) = x in
  let (rey, imy) = y in
  (rex +. rey, imx +. imy)
in

let rec cmul x y =
  let (rex, imx) = x in
  let (rey, imy) = y in
  (rex *. rey -. imx *. imy, rex *. imy +. rey *. imx)
in

let rec norm_sqr x =
  let (re, im) = x in
  re *. re +. im *. im
in

let rec set_pixel p a =
  p.(0) <- a; p.(1) <- a; p.(2) <- a
in

let rec set_pixel2 p a0 a1 a2 =
  p.(0) <- a0; p.(1) <- a1; p.(2) <- a2
in

let complex_mat = Array.make size (Array.make size (0.0, 0.0))
in

let rgb = Array.make 3 0
in

let image = Array.make size (Array.make size rgb)
in


let rec init_complex_mat _ =
  let rec malloc i n =
    if i = n then
      ()
    else
      (let row = Array.make size (0.0, 0.0) in
       complex_mat.(i) <- row;
       malloc (i+1) n) in
  let rec init_loop i j n =
    let ai = (float_of_int i) /. (float_of_int (n-1)) in
    let aj = (float_of_int j) /. (float_of_int (n-1)) in
    let re = 4.0 *. ai -. 2.0 in
    let im = 4.0 *. aj -. 2.0 in
    if i = n then
      ()
    else
      if j = n then
        init_loop (i+1) 0 n
      else
        (complex_mat.(i).(j) <- (re, im);
         init_loop i (j+1) n) in
  malloc 0 size;
  init_loop 0 0 size
in


let rec init_image _ =
  let rec malloc_1d i n row =
    if i = n then
      ()
    else
      (row.(i) <- Array.make 3 0;
       malloc_1d (i+1) n row) in
  let rec malloc_2d i n =
    if i = n then
      ()
    else
      (let row = Array.make size (Array.make 3 0) in
       malloc_1d 0 size row;
       image.(i) <- row;
       malloc_2d (i+1) n) in
  malloc_2d 0 size
in


let rec compute_pixel i j =
  let c = complex_mat.(i).(j) in
  let rec compute_pixel_loop n x c =
    if n = 0 then
      (0, 0, 0)
    else
      let circ_sqr = norm_sqr x in
      if circ_sqr >= 4.0 then
        let t0 = (float_of_int n) /. (float_of_int limit) in
        let t1 = (pi /. 2.0) *. t0 in
        let r = 255.0 *. ((2.0 /. 13.0) +. (11.0 /. 13.0) *. (cos t1)) in
        let b = 255.0 *. ((1.0 /. 13.0) +. (1.0 /. 4.0) *. t0) in
        (int_of_float r, 30, int_of_float b)
      else
        let t0 = cmul x x in
        let t1 = cadd t0 c in
        compute_pixel_loop (n-1) t1 c in
  compute_pixel_loop limit (0.0, 0.0) c
in


let rec compute_image _ =
  let rec compute_image_loop i j n =
    if i = n then
      ()
    else
      if j = n then
        compute_image_loop (i+1) 0 n
      else
        (let (r, g, b) = (compute_pixel i j) in
         set_pixel2 image.(i).(j) r g b;
          (* set_pixel image.(i).(j) (compute_pixel i j); *)
         compute_image_loop i (j+1) n) in
  compute_image_loop 0 0 size
in


let rec print_pixel rgb =
  print_int rgb.(0);
  print_char 32;
  print_int rgb.(1);
  print_char 32;
  print_int rgb.(2);
  print_char 10
in


let rec print_image _ =
  let rec print_image_loop i j n =
    if i = n then
      ()
    else
      if j = n then
        print_image_loop (i+1) 0 n
      else
        (print_pixel image.(i).(j);
         print_image_loop i (j+1) n) in
  print_image_loop 0 0 size
in


let rec write_ppm_header _ =
  (
    print_char 80; (* 'P' *)
    print_char (48 + 3); (* +6 if binary *) (* 48 = '0' *)
    print_char 10;
    print_int size;
    print_char 32;
    print_int size;
    print_char 32;
    print_int 255;
    print_char 10
  )
in


let rec main _ =
  init_complex_mat ();
  init_image ();
  write_ppm_header ();
  compute_image ();
  print_image ()
in

main ()
