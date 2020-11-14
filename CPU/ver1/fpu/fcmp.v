`default_nettype none
module fequal
	(input wire [31:0]	x1,
	 input wire [31:0]	x2,
	 output wire		eq);

	assign eq = (x1[30:23]==8'd255 && |(x1[22:0])) ? 1'd0 :
				(x2[30:23]==8'd255 && |(x2[22:0])) ? 1'd0 ://どっちかがNaN
				(x1[30:0]==31'd0) ? (x2[30:0]==31'd0) ://+0と-0は等しい
				(x1 == x2);
endmodule


module fless
	(input wire [31:0]	x1,
	 input wire [31:0]	x2,
	 output wire		less);//x1<x2 ?
	
	assign less = (x1[30:23]==8'd255 && |(x1[22:0])) ? 1'd0 :
				  (x2[30:23]==8'd255 && |(x2[22:0])) ? 1'd0 ://どっちかがNaN
				  (x1[30:0]==31'd0 && x2[30:0]==31'd0) ? 1'd0 ://+0 == -0
				  (~x1[31] && x2[31]) ? 1'd0 ://x2<0<x1
				  (x1[31] && ~x2[31]) ? 1'd1 ://x1<0<x2
				  (x1[31]==1'd0) ? x1<x2 ://x1,x2>0
				  x2<x1;//x1,x2<0
endmodule
`default_nettype wire
