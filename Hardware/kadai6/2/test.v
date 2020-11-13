`default_nettype none
`timescale 1ns/1ps

module div2
	(input wire [33:0] x,
	 input wire [31:0] d,
	 output wire [1:0] q,
	 output wire [31:0] r);
	
	wire [32:0] x1;	
	wire [31:0] r1;
	wire [32:0] x2;
	wire [0:0] q1;
	wire [0:0] q2;
	wire [32:0] temp1;
	wire [32:0] temp2;
	
	assign x1 = x[33:1];
	assign q1 = (x1 >= {1'b0,d}) ? 1'b1 : 1'b0;
	assign temp1 = (x1 >= {1'b0,d}) ? x1-{1'b0,d} : x1;
	assign r1 = temp1[31:0];

	assign x2 = {r1,x[0:0]};
	assign q2 = (x2 >= {1'b0,d}) ? 1'b1 : 1'b0;
	assign temp2 = (x2 >= {1'b0,d}) ? x2-{1'b0,d} : x2;
	assign r = temp2[31:0];
	assign q = {q1,q2};
endmodule


module div4
	(input wire [35:0] x,
	 input wire [31:0] d,
	 output wire [3:0] q,
	 output wire [31:0] r);
	
	wire [33:0] x1;
	wire [31:0] r1;
	wire [33:0] x2;
	wire [1:0] q1;
	wire [1:0] q2;

	assign x1 = x[35:2];
	div2 d1(x1,d,q1,r1);
	assign x2 = {r1,x[1:0]};
	div2 d2(x2,d,q2,r);
	assign q = {q1,q2};
	
endmodule

module div8
    (input wire [39:0] x,
     input wire [31:0] d,
     output wire [7:0] q,
     output wire [31:0] r);
    
	wire [31:0] r1;
    wire [3:0] q1;
    wire [3:0] q2;

    div4 d1(x[39:4],d,q1,r1);
    div4 d2({r1,x[3:0]},d,q2,r);
    assign q = {q1,q2};

endmodule

module div16
    (input wire [47:0] x,
     input wire [31:0] d,
     output wire [15:0] q,
     output wire [31:0] r);

    wire [31:0] r1;
    wire [7:0] q1;
    wire [7:0] q2;

    div8 d1(x[47:8],d,q1,r1);
    div8 d2({r1,x[7:0]},d,q2,r);
    assign q = {q1,q2};

endmodule


module div32p2
	(input wire [63:0] x,
	 input wire [31:0] d,
	 output reg [31:0] q,
	 output reg [31:0] r,
	 input wire clk,
	 input wire rstn
	);
	
	wire [31:0] r1;
    wire [15:0] q1;
    wire [15:0] q2;
	wire [31:0] hoge;
	
	reg  [15:0] reg1;
	reg  [31:0] reg2;
	reg  [15:0] reg3;
	reg  [31:0] reg4;
	reg  [31:0] ans_reg;

	div16 d1(x[63:16],d,q1,r1);
    div16 d2({reg4,reg1},reg2,q2,hoge);

    //assign q = {reg3,q2};

	always @(posedge clk) begin
		if (rstn) begin
    		reg1 <= x[15:0];
    		reg2 <= d;
			reg3 <= q1;
			reg4 <= r1;
			q <= {reg3,q2};
			r <= hoge;

		end
	end

endmodule

	

`default_nettype wire


