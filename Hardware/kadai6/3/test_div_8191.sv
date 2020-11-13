`timescale 1ns / 100ps
`default_nettype none

module test_div_8191();
   integer i;
   logic [31:0] x;
   logic [12:0] y;
   logic [19:0] z;

   logic [12:0] r;
   logic [31:0] t;
   logic [31:0] t2;
   logic [19:0] q;

   divider_8191 u(x,y,z);

   initial begin
      //$dumpfile("test_div_8191.vcd");
      //$dumpvars(0);

      for (i=0; i<1000000; i++) begin
	 x = $urandom();
	 t = x % 8191;
	 r = t[12:0];
	 t2 = x / 8191;
	 q = t2[19:0];
         #1;
	 if (i%10000 == 0) begin
	    $display("i = %d", i);
	 end
	 if (y !== r) begin
	    $display("y %b %b %b", x, r, y);
	 end 
	 if (z !== q) begin
	    $display("z %b %b %b", x, q, z);
	 end 
      end
      $finish;
   end
endmodule

`default_nettype wire
