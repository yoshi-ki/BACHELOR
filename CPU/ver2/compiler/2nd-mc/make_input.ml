let name = "matrix"
in
let f = "input_" ^ name ^ ".txt" in
let out_chan = open_out f in

let rec loop oc i j n =
  if j = n then
    ()
  else if i = n then
    (* (Printf.fprintf oc "\n"; *)
     (loop oc 0 (j+1) n)
  else
    (Printf.fprintf oc "l";
     loop oc (i+1) j n)
in
loop out_chan 0 0 12;
close_out out_chan
