`default_nettype none
`timescale 1ns/1ps

module amari_1
    (input wire [31:0] x,
     output wire [12:0] q);
	assign q = x[12:0] + x[24:13] + {1'b0,x[31:25]};

endmodule

module divider_8191(
	input wire [31:0] x,
	output wire [12:0] y,
	output wire [19:0] z
    );
	
	amari_1 d (x,y);
	
	assign z = x / 32'd8191;
	 

endmodule


	

`default_nettype wire

