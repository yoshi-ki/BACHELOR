`default_nettype none
`timescale 1ns/100ps

module fadd
	(input wire [31:0] x1,
	 input wire [31:0] x2,
	 output wire [31:0] y,
	 output wire ovf);

//1
	wire s1;
	wire s2;
	assign s1 = x1[31];
	assign s2 = x2[31];
	wire [7:0] e1;
	wire [7:0] e2;
	assign e1 = x1[30:23];
	assign e2 = x2[30:23];
	wire [22:0] m1;
	wire [22:0] m2;
	assign m1 = x1[22:0];
	assign m2 = x2[22:0];

//2
	wire [24:0] m1a;
	wire [24:0] m2a;
	
	wire [7:0] e1a;
	wire [7:0] e2a;

	assign m1a = (e1 == 8'd0) ? {2'b00,m1} : {2'b01,m1};
	assign m2a = (e2 == 8'd0) ? {2'b00,m2} : {2'b01,m2};
	assign e1a = (e1 == 8'd0) ? 8'd1 : e1;
	assign e2a = (e2 == 8'd0) ? 8'd1 : e2;

//4
	wire [7:0] e2ai;
	assign e2ai = (~e2a);

//5
	wire [8:0] te;
	assign te = {1'b0,e1a} + {1'b0,e2ai};

//6	
	wire ce;
	wire [7:0] tde;
	wire [4:0] de;
	assign ce = (te[8] == 1'b1) ? 1'b0 : 1'b1;
	wire [8:0] tempte;
	assign tempte = te + 9'b1;
	assign tde = (te[8] == 1'b1) ? tempte[7:0] : (~te[7:0]);
	assign de = (tde > 8'd31) ?  5'd31 : tde[4:0];

//8	
	wire sel;
	assign sel = (de == 5'b0) ? ((m1a > m2a) ? 1'b0 : 1'b1) : ce;
	wire [24:0] ms;
	wire [24:0] mi;
	wire [7:0] es;
	wire [7:0] ei;
	wire ss;
	assign ms = (sel == 1'b0) ? m1a : m2a;
	assign mi = (sel == 1'b0) ? m2a : m1a;
	assign es = (sel == 1'b0) ? e1a : e2a;
	assign ei = (sel == 1'b0) ? e2a : e1a;
	assign ss = (sel == 1'b0) ? s1 : s2;

//10
	wire [55:0] mie;
	assign mie = {mi,31'b0};
	wire [55:0] mia;
	assign mia = (mie >> de);

//12
	wire tstck;
	assign tstck = (|(mia[28:0])); 

	wire [26:0] mye;
	assign mye = (s1 == s2) ? ({ms,2'b0} + mia[55:29]) : ({ms,2'b0} - mia[55:29]);
	
//14
	wire [7:0] esi;
	wire [8:0] tempesi;
	assign esi = es + 8'b1;
	
//15
	wire [7:0] eyd;
	wire [26:0] myd;
	wire stck;
	assign eyd = (mye[26] == 1'b0) ? es : ((esi == 8'd255) ? 8'd255 : esi);
	assign myd = (mye[26] == 1'b0) ? mye : ((esi == 8'd255) ? {2'b01,25'b0} : (mye >> 1'b1));
	assign stck = (mye[26] == 1'b0) ? tstck : ((esi == 8'd255) ? 1'b0 : tstck || mye[0]);

//16
	wire [4:0] se;
	assign se = 
		(myd[25] == 1'b1) ? 5'd0 :
		(myd[24] == 1'b1) ? 5'd1 :
		(myd[23] == 1'b1) ? 5'd2 :
		(myd[22] == 1'b1) ? 5'd3 :
		(myd[21] == 1'b1) ? 5'd4 :
		(myd[20] == 1'b1) ? 5'd5 :
		(myd[19] == 1'b1) ? 5'd6 :
		(myd[18] == 1'b1) ? 5'd7 :
		(myd[17] == 1'b1) ? 5'd8 :
		(myd[16] == 1'b1) ? 5'd9 :
		(myd[15] == 1'b1) ? 5'd10 :
		(myd[14] == 1'b1) ? 5'd11 :
		(myd[13] == 1'b1) ? 5'd12 :
		(myd[12] == 1'b1) ? 5'd13 :
		(myd[11] == 1'b1) ? 5'd14 :
		(myd[10] == 1'b1) ? 5'd15 :
		(myd[9] == 1'b1) ? 5'd16 :
		(myd[8] == 1'b1) ? 5'd17 :
		(myd[7] == 1'b1) ? 5'd18 :
		(myd[6] == 1'b1) ? 5'd19 :
		(myd[5] == 1'b1) ? 5'd20 :
		(myd[4] == 1'b1) ? 5'd21 :
		(myd[3] == 1'b1) ? 5'd22 :
		(myd[2] == 1'b1) ? 5'd23 :
		(myd[1] == 1'b1) ? 5'd24 :
		(myd[0] == 1'b1) ? 5'd25 : 5'd26;
			
					
	wire [8:0] eyf;
	assign eyf = {1'b0,eyd} - {4'b0,se};
	
	wire [7:0] eyr;
	wire [26:0] myf;
	assign myf = ((eyf[8] == 1'b0) && (eyf > 9'b0)) ? (myd << se) : (myd << (eyd[4:0] - 5'd1));
	assign eyr = ((eyf[8] == 1'b0) && (eyf > 9'b0)) ? (eyf[7:0]) : 8'b0;

//19
	wire [24:0] myr;
	wire [25:0] tempmyr;
	assign tempmyr = myf[26:2] + 26'b1;
	assign myr = 
	(
	  ((myf[1] == 1'b1) && (myf[0] == 1'b0) && (stck == 1'b0) && (myf[2] == 1'b1)) 
	|| ((myf[1] == 1'b1) && (myf[0] == 1'b0) && (s1 == s2) && (stck == 1'b1)) 
	|| ((myf[1] == 1'b1) && (myf[0] == 1'b1)) 
	) ? 
	tempmyr[24:0] : myf[26:2];

//20
	wire [7:0] eyri;
	wire [8:0] tempeyri;
	assign tempeyri = eyr + 8'b1;
	assign eyri = tempeyri[7:0];

//21
	wire [7:0] ey;
	wire [22:0] my;
	assign ey = (myr[24] == 1'b0) ? ((myr[23:0] == 24'b0) ? 8'd0 : eyr) : eyri;
	assign my = (myr[24] == 1'b0) ? ((myr[23:0] == 24'b0) ? 23'b0 : myr[22:0]) : 23'b0;
	assign ovf = ((((mye[26] == 1'b1) && (esi == 8'd255)) || ((myr[24] == 1'b1) && (eyri == 8'd255)) ) && ((e1 != 8'd255) && (e2 != 8'd255)) ) ? 1'b1 : 1'b0;

//22	
	wire sy;
	assign sy = ((ey == 8'b0) && (my == 23'b0)) ? s1 & s2 : ss;
	
	
	wire nzm1;
	wire nzm2;
	assign nzm1 = |(m1[22:0]);
	assign nzm2 = |(m2[22:0]);

//23
	assign y = 
		(e1 == 8'd255 && e2 != 8'd255) ? {s1,8'd255,nzm1,m1[21:0]} :
		(e2 == 8'd255 && e1 != 8'd255) ? {s2,8'd255,nzm2,m2[21:0]} :
		(e1 == 8'd255 && e2 == 8'd255 && nzm2) ? {s2,8'd255,1'b1,m2[21:0]} :
		(e1 == 8'd255 && e2 == 8'd255 && nzm1) ? {s1,8'd255,1'b1,m1[21:0]} :
		(e1 == 8'd255 && e2 == 8'd255 && s1 == s2) ? {s1,8'd255,23'b0} :
		(e1 == 8'd255 && e2 == 8'd255) ? {1'b1,8'd255,1'b1,22'b0} :
		{sy,ey,my};


endmodule

`default_nettype wire
