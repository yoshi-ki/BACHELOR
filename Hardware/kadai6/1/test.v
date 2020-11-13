`default_nettype none
`timescale 1ns/1ps 

module div32
	(input wire [63:0] x,
	 input wire [31:0] d,
	 output wire [31:0] q,
	 output wire [31:0] r);
	

	wire [31 : 0] q_n;
	wire [32*32-1 : 0] r_n;
	wire [64*33-1 : 0] x_n;

	assign x_n[64*33-1 : 64*32] = x;
		
	genvar  i;
	generate
	
	for(i=31;i>0;i=i-1) begin 
	
	wire [32:0]  xh;
	wire [i-1:0]  xl;
	
	assign xh = x_n[(i+2)*64+i-32 : (i+2)*64-63+i-1];
	assign xl = x_n[(i+2)*64-63+i-2 : (i+1)*64];
	
	assign q_n[i: i] = (d > xh) ? 1'b0 : 1'b1;
	assign r_n[(i+1)*32-1 : i*32] = (d > xh) ? xh : (xh - d);
	assign x_n[(i+1)*64-1 : i*64] = {((d > xh) ? xh : (xh - d)),xl};
	
	
	end
	endgenerate
	
	assign q = {q_n[31:1],(x_n[96:64]>=d) ? 1'b1 : 1'b0};
	assign r = (x_n[96:64]>=d) ? x_n[96:64]-d : x_n[96:64];

endmodule
`default_nettype wire	




 
