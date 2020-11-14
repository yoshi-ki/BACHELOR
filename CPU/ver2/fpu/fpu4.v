`default_nettype none
module faddsub
	(input wire [31:0]	x1,
	 input wire [31:0]	x2,
	 input wire			a_s,//add:0, sub:1
	 output wire [31:0]	y,
	 output wire		ovf,
	 input wire			clk,
	 input wire			enable);

	reg [23:0]	m1a, m2a;
	reg [7:0]	e1a, e2a;
	reg [7:0]	ew, el;
	reg [23:0]	mw, ml;
	reg [7:0]	eshift;
	reg [48:0]	mls1;
	reg [26:0]	mls2;
	reg [26:0]	myd1_a;
	reg [26:0]	myd1_s;
	reg [26:0]	myd2_a;
	reg [8:0]	eyd1_a;
	reg [4:0]	lshift_s;
	reg [26:0]	myd2_s;
	reg [7:0]	eyd1_s;
	reg			s2;
	reg [26:0]	myd2;
	reg [8:0]	eyd1;
	reg			sy_s;
	reg			sy;
	reg [24:0]	myd3;
	reg [8:0]	eyd2;
	reg [23:0]	myd4;
	reg			ovf1;
	reg [7:0]	ey;
	reg [22:0]	my;
	reg			nzm1, nzm2;
	reg [31:0]	y_reg, y_reg1, y_reg2, y_reg3;
	reg			ovf_reg, ovf_reg1, ovf_reg2, ovf_reg3;

	assign y = y_reg3;
	assign ovf = ovf_reg3;

	always @(posedge clk) begin
		if (~enable) begin
			y_reg <= 32'd0;
			ovf_reg <= 1'd0;
		end else begin
			m1a = (x1[30:23]==8'd0) ? {1'b0, x1[22:0]} : {1'b1, x1[22:0]};
			m2a = (x2[30:23]==8'd0) ? {1'b0, x2[22:0]} : {1'b1, x2[22:0]};//非正規化数かどうかで場合分け
			e1a = (x1[30:23]==8'd0) ? 8'd1 : x1[30:23];//非正規化数なら本当の指数は-126なので, バイアス値127を足した1を入れる
			e2a = (x2[30:23]==8'd0) ? 8'd1 : x2[30:23];

			//絶対値が大きい方がw, 小さい方がl
			ew = (x1[30:0]>=x2[30:0]) ? e1a : e2a;
			el = (x1[30:0]>=x2[30:0]) ? e2a : e1a;
			mw = (x1[30:0]>=x2[30:0]) ? m1a : m2a;
			ml = (x1[30:0]>=x2[30:0]) ? m2a : m1a;

			//指数の差だけmlを右シフト
			eshift = ew - el;
			mls1 = {ml, 25'd0} >> eshift;
			mls2 = {mls1[48:23], |(mls1[22:0])};//シフト後の仮数24+G1+R1+S1

			//加算
			myd1_a = {1'd0, mw, 2'd0} + {1'd0, mls2[26:2], |(mls2[1:0])};//繰り上がり1+仮数24+G1+R1
			//減算
			myd1_s = {mw, 3'd0} - mls2;//仮数24+G1+R1+S1

			//繰り上がり補正(正規化数でのみ起こる)
			myd2_a = (myd1_a[26]) ? {1'd0, myd1_a[26:2], |(myd1_a[1:0])} : myd1_a;
			eyd1_a = {1'd0, ew} + {8'd0, myd1_a[26]};

			//繰り下がり補正
			lshift_s = myd1_s[26] ? 5'd0 :
					   myd1_s[25] ? 5'd1 :
					   myd1_s[24] ? 5'd2 :
					   myd1_s[23] ? 5'd3 :
					   myd1_s[22] ? 5'd4 :
					   myd1_s[21] ? 5'd5 :
					   myd1_s[20] ? 5'd6 :
					   myd1_s[19] ? 5'd7 :
					   myd1_s[18] ? 5'd8 :
					   myd1_s[17] ? 5'd9 :
					   myd1_s[16] ? 5'd10 :
					   myd1_s[15] ? 5'd11 :
					   myd1_s[14] ? 5'd12 :
					   myd1_s[13] ? 5'd13 :
					   myd1_s[12] ? 5'd14 :
					   myd1_s[11] ? 5'd15 :
					   myd1_s[10] ? 5'd16 :
					   myd1_s[9] ? 5'd17 :
					   myd1_s[8] ? 5'd18 :
					   myd1_s[7] ? 5'd19 :
					   myd1_s[6] ? 5'd20 :
					   myd1_s[5] ? 5'd21 :
					   myd1_s[4] ? 5'd22 :
					   myd1_s[3] ? 5'd23 :
					   myd1_s[2] ? 5'd24 :
					   myd1_s[1] ? 5'd25 :
					   myd1_s[0] ? 5'd26 :
					   5'd0;
			myd2_s = ({3'd0, lshift_s} < ew) ? myd1_s << lshift_s :
					 (ew>8'd1) ? myd1_s << (ew-8'd1) ://正規化数が非正規化数になるパターン
					 myd1_s;//元々非正規化数
			eyd1_s = ({3'd0, lshift_s} < ew) ? ew - {3'd0, lshift_s} : 8'd1;

			//加減算の選択
			s2 = a_s ^ x2[31]; 
			myd2 = (x1[31]==s2) ? myd2_a : {1'd0, myd2_s[26:2], |(myd2_s[1:0])};//繰り上がり1+仮数24+G1+R1
			eyd1 = (x1[31]==s2) ? eyd1_a : {1'd0, eyd1_s};
			sy_s = (x1[30:0]>x2[30:0]) ? x1[31] :
				   (x1[30:0]==x2[30:0]) ? 1'd0 ://同じ数の減算結果は+0
				   s2;
			sy = (x1[31]==s2) ? s2 : sy_s;

			//丸め
			myd3 = myd2[26:2] + {24'd0, (myd2[1] & (myd2[2] | myd2[0]))};//繰り上がり1+仮数24

			//繰り上がり補正(正規, 非正規どちらも)
			eyd2 = (myd3[24] && eyd1==9'd1) ? 9'd1 ://非正規化数が正規化数になった
				   (myd3[24]) ? eyd1 + 9'd1 :
				   eyd1;
			myd4 = (myd3[24]) ? {1'd1, 23'd0} : myd3[23:0];//ケチ1+仮数23
			
			ovf1 = eyd2 >= 9'd255;
			ey = myd4[23] ? eyd2[7:0] : 8'd0;
			my = ovf1 ? 23'd0 : myd4[22:0];

			nzm1 = |(x1[22:0]);
			nzm2 = |(x2[22:0]);

			y_reg <= (x1[30:23]==8'd255 && x2[30:23]!=8'd255) ? {x1[31], 8'd255, nzm1, x1[21:0]} :
					 (x1[30:23]!=8'd255 && x2[30:23]==8'd255) ? {s2, 8'd255, nzm2, x2[21:0]} :
					 (x1[30:23]==8'd255 && x2[30:23]==8'd255 && nzm2) ? {x2[31],8'd255,1'b1,x2[21:0]} :
					 (x1[30:23]==8'd255 && x2[30:23]==8'd255 && nzm1) ? {x1[31],8'd255,1'b1,x1[21:0]} :
					 (x1[30:23]==8'd255 && x2[30:23]==8'd255 && x1[31]==s2) ? {x1[31],8'd255,23'b0} :
					 (x1[30:23]==8'd255 && x2[30:23]==8'd255) ? {1'b1,8'd255,1'b1,22'b0} :
					 {sy, ey, my};
			
			ovf_reg <= (x1[30:23]<8'd255 && x2[30:23]<8'd255) ? ovf1 : 1'b0;
////////////////////////
			y_reg1 <= y_reg;
			ovf_reg1 <= ovf_reg;
////////////////////////
			y_reg2 <= y_reg1;
			ovf_reg2 <= ovf_reg1;
////////////////////////
			y_reg3 = y_reg2;
			ovf_reg3 = ovf_reg2;
		end
	end
endmodule

module fmul
	(input wire [31:0]	x1,
	 input wire [31:0]	x2,
	 output wire [31:0]	y,
	 output wire		ovf,
	 input wire			clk,
	 input wire			enable);

	reg			s1, s2;
	reg [23:0]	m1a, m2a;
	reg [7:0]	e1a, e2a;
	reg			sy;
	reg [8:0]	eyd1;
	reg [1:0]	n_dn;
	reg [8:0]	eyd2;
	reg [47:0]	myd1;
	reg [47:0]	myd2_n;
	reg [8:0]	eyd3_n;
	reg [95:0]	myd2_den1;
	reg [47:0]	myd2_den;
	reg [8:0]	eyd3_den;
	reg [47:0]	myd2;
	reg [8:0]	eyd3;
	reg [5:0]	lshift;
	reg [47:0]	myd3;
	reg [8:0]	eyd4;
	reg [26:0]	myd4;
	reg [24:0]	myd5;
	reg [8:0]	eyd5;
	reg [22:0]	my;
	reg			ovf1;
	reg			nzm1, nzm2;
	reg [31:0]	y_reg, y_reg1, y_reg2, y_reg3;
	reg			ovf_reg, ovf_reg1, ovf_reg2, ovf_reg3;

	assign y = y_reg3;
	assign ovf = ovf_reg3;

	always @(posedge clk) begin
		if (~enable) begin
			y_reg <= 32'd0;
			ovf_reg <= 1'd0;
		end else begin
			s1 = x1[31];
			s2 = x2[31];
			m1a = (x1[30:23]==8'd0) ? {1'b0, x1[22:0]} : {1'b1, x1[22:0]};//非正規化数かどうかで場合分け
			m2a = (x2[30:23]==8'd0) ? {1'b0, x2[22:0]} : {1'b1, x2[22:0]};
			e1a = (x1[30:23]==8'd0) ? 8'd1 : x1[30:23];//非正規化数なら本当の指数は-126なので, バイアス値127を足した1を入れる(dであることに注意)
			e2a = (x2[30:23]==8'd0) ? 8'd1 : x2[30:23];//e2a-127が本当の指数

			//符号決定
			sy = s1 ^ s2;

			//指数(仮)の加算
			eyd1 = {1'b0, e1a} + {1'b0, e2a};//繰り上がり分を考慮して9bit, 127引いて負になると怖いので先に判定
			n_dn = (eyd1<9'd127) ? 2'b10 ://結果が必ず非正規化数
				   (eyd1==9'd127) ? 2'b01 ://繰り上がりが生じれば正規化数
				   2'b00;
			eyd2 = eyd1 - 9'd127;
			
			//仮数の積算
			myd1 = {24'd0, m1a} * {24'b0, m2a};

			//正規化数の場合, 最上位ビットが1なら右シフト
			myd2_n = myd1[47] ? {1'd0, myd1[47:2], |(myd1[1:0])} : myd1;
			eyd3_n = eyd2 + {8'd0, myd1[47]};
			//wire		ovf1 = eyd3 >= 9'd255;
			//非正規化数の場合(n_dn==10)
			myd2_den1 = ({myd1, 48'd0}>>(9'd128-eyd1));
			myd2_den = {myd2_den1[95:49], |(myd2_den1[48:0])};
			//wire [47:0]	myd2_den = (myd1>>(9'd128-eyd1));
			eyd3_den = 9'd1;

			myd2 = ((n_dn==2'b00)||(n_dn==2'b01 && myd1[47])) ? myd2_n : myd2_den;//元から正規か, 非正規から正規になったか
			eyd3 = ((n_dn==2'b00)||(n_dn==2'b01 && myd1[47])) ? eyd3_n : eyd3_den;

			//正規化のため左シフト(priority encoder)(最大48シフトなので6bit)(入力のどちらかが非正規化数の時)
			lshift = myd2[46] ? 6'd0 :
					 myd2[45] ? 6'd1 :
					 myd2[44] ? 6'd2 :
					 myd2[43] ? 6'd3 :
					 myd2[42] ? 6'd4 :
					 myd2[41] ? 6'd5 :
					 myd2[40] ? 6'd6 :
					 myd2[39] ? 6'd7 :
					 myd2[38] ? 6'd8 :
					 myd2[37] ? 6'd9 :
					 myd2[36] ? 6'd10 :
					 myd2[35] ? 6'd11 :
					 myd2[34] ? 6'd12 :
					 myd2[33] ? 6'd13 :
					 myd2[32] ? 6'd14 :
					 myd2[31] ? 6'd15 :
					 myd2[30] ? 6'd16 :
					 myd2[29] ? 6'd17 :
					 myd2[28] ? 6'd18 :
					 myd2[27] ? 6'd19 :
					 myd2[26] ? 6'd20 :
					 myd2[25] ? 6'd21 :
					 myd2[24] ? 6'd22 :
					 myd2[23] ? 6'd23 :
					 myd2[22] ? 6'd24 :
					 myd2[21] ? 6'd25 :
					 myd2[20] ? 6'd26 :
					 myd2[19] ? 6'd27 :
					 myd2[18] ? 6'd28 :
					 myd2[17] ? 6'd29 :
					 myd2[16] ? 6'd30 :
					 myd2[15] ? 6'd31 :
					 myd2[14] ? 6'd32 :
					 myd2[13] ? 6'd33 :
					 myd2[12] ? 6'd34 :
					 myd2[11] ? 6'd35 :
					 myd2[10] ? 6'd36 :
					 myd2[9] ? 6'd37 :
					 myd2[8] ? 6'd38 :
					 myd2[7] ? 6'd39 :
					 myd2[6] ? 6'd40 :
					 myd2[5] ? 6'd41 :
					 myd2[4] ? 6'd42 :
					 myd2[3] ? 6'd43 :
					 myd2[2] ? 6'd44 :
					 myd2[1] ? 6'd45 :
					 myd2[0] ? 6'd46 :
					 6'd0;
			myd3 = (lshift<eyd3) ? myd2<<lshift :
				   (lshift==eyd3) ? (myd2<<lshift)>>1 ://eyd3だけシフトするとケチ1が消えてしまう, 気持ちとしてはmyd2<<(lshift-1)
				   (n_dn==2'b00) ? (myd2<<eyd3)>>1 ://正規化数が非正規化数になるパターン
				   myd2;
			eyd4 = (lshift<eyd3) ? eyd3 - lshift : 9'd1;
			
			//丸め
			myd4 = {myd3[47:22], |(myd3[21:0])};//繰り上がり1, 頭1, 仮数部23, G1, R1
			myd5 = myd4[26:2] + {24'd0, (myd4[1] & (myd4[2] | myd4[0]))};

			//指数調整
			eyd5 = (myd5[24]) ? eyd4 + 9'd1 :
				   (myd5[23]) ? eyd4 :
				   9'd0;
			my = (myd5[24]) ? 23'd0 : myd5[22:0];//桁上がりが起きたら仮数は0になる

			ovf1 = eyd5>=9'd255;

			nzm1 = |(x1[22:0]);
			nzm2 = |(x2[22:0]);
			y_reg <= (x1[30:23]==8'd255 && x2[30:23]!=8'd255 && nzm1) ? {s1, 8'd255, nzm1, x1[21:0]} :
					(x1[30:23]==8'd255 && x2[30:0]==31'd0) ? {1'd1, 8'd255, 1'd1, 22'd0} :
					(x1[30:23]==8'd255 && x2[30:23]!=8'd255) ? {sy, 8'd255, nzm1, x1[21:0]} :
					(x1[30:23]!=8'd255 && x2[30:23]==8'd255 && nzm2) ? {s2, 8'd255, nzm2, x2[21:0]} :
					(x1[30:0]==31'd0 && x2[30:23]==8'd255) ? {1'd1, 8'd255, 1'd1, 22'd0} :
					(x1[30:23]!=8'd255 && x2[30:23]==8'd255) ? {sy, 8'd255, nzm2, x2[21:0]} :
					(x1[30:23]==8'd255 && x2[30:23]==8'd255 && nzm2) ? {s2, 8'd255, 1'd1, x2[21:0]} :
					(x1[30:23]==8'd255 && x2[30:23]==8'd255 && nzm1) ? {s1, 8'd255, 1'd1, x1[21:0]} :
					(x1[30:23]==8'd255 && x2[30:23]==8'd255) ? {sy, 8'd255, 23'd0} :
					(ovf1) ? {sy, 8'd255, 23'd0} :
					{sy, eyd5[7:0], my};
			ovf_reg <= (x1[30:23]<8'd255 && x2[30:23]<8'd255) ? ovf1 : 1'd0;
///////////////////
			y_reg1 <= y_reg;
			ovf_reg1 <= ovf_reg;
///////////////////
			y_reg2 <= y_reg1;
			ovf_reg2 <= ovf_reg1;
///////////////////
			y_reg3 = y_reg2;
			ovf_reg3 = ovf_reg2;
		end
	end
endmodule

module fdiv
	(input wire [31:0]	x1,
	 input wire [31:0]	x2,
	 output wire [31:0]	y,
	 output wire		ovf,
	 output wire		div0,
	 input wire			clk,
	 input wire			enable);

	reg [23:0]	m1a, m2a;
	reg [7:0]	e1a, e2a;
	reg			sy;
	reg [5:0]	lshift1, lshift2;
	reg [23:0]	m1a_, m2a_;
	reg [8:0]	e1a_, e2a_;
	reg [8:0]	eyd1, eyd1_05;
	reg			udf, udf_05;
	reg [31:0]	x1_1, x2_1, x1_15, x2_15;
	reg [39:0]	r0_;
	reg [64:0]	r0, r1, r2, r3;
	reg [127:0]	a0_, b0_, a1_, b1_, a2_, b2_, a3_;
	reg [63:0]	a0, b0, a1, b1, a2, b2, a3;
	reg [25:0]	myd1, myd1_;
	reg			s;
	reg [8:0]	eyd1_1;
	reg			udf_1;
	reg	[31:0]	x1_2, x2_2;
	reg [26:0]	myd2;
	reg [25:0]	myd3;
	reg [8:0]	eyd2;
	reg [24:0]	myd4;
	reg [8:0]	eyd3;
	reg [7:0]	ey;
	reg [22:0]	my;
	reg			nzm1, nzm2;
	reg [31:0]	y_reg;
	reg			ovf_reg, div0_reg;

	assign y = y_reg;
	assign ovf = ovf_reg;
	assign div0 = div0_reg;

	always @(posedge clk) begin
		if (~enable) begin
			sy <= 1'd0;
			m1a_ <= 24'd0;
			m2a_ <= 24'd0;
			eyd1 <= 9'd0;
			udf <= 1'd0;
			x1_1 <= 32'd0;
			x2_1 <= 32'd0;
			myd1 <= 26'd0;
			s <= 1'd0;
			x1_2 <= 32'd0;
			x2_2 <= 32'd0;
			y_reg <= 32'd0;
			ovf_reg <= 1'd0;
			div0_reg <= 1'd0;
		end else begin
			m1a = (x1[30:23]==8'd0) ? 24'd0 : {1'b1, x1[22:0]};//非正規化数は0
			m2a = (x2[30:23]==8'd0) ? 24'd0 : {1'b1, x2[22:0]};
			e1a = (x1[30:23]==8'd0) ? 8'd0 : x1[30:23];
			e2a = (x2[30:23]==8'd0) ? 8'd0 : x2[30:23];//e2a-127が本当の指数


			//指数(仮)の減算
			eyd1 <= {1'b0, e1a} + 9'd127 - {1'd0, e2a};//eyd1>255ならovf, eyd1<0ならudf
			udf <= ({1'b0, e1a} + 9'd127) < {1'd0, e2a};//underflow
			//eyd1=255だと繰り下がれば正規化数

			x1_1 <= x1;
			x2_1 <= x2;


			//仮数の除算をgoldschmidtでやりたい
			r0_ = 16'b1111000011110001 * m2a; // 32/17 * y
			r0 = {18'b101101001011010011, 47'd0} - {1'd0, r0_, 24'd0};
			a0_ = {1'd0, m1a, 39'd0} * r0[63:0];
			a0 <= a0_[126:63];
			b0_ = {1'd0, m2a, 39'd0} * r0[63:0];
			b0 <= b0_[126:63];
		
////////////////////

			r1 = {2'b10, 63'd0} - {1'd0, b0};
			a1_ = a0 * r1[63:0];
			a1 <= a1_[126:63];
			b1_ = b0 * r1[63:0];
			b1 <= b1_[126:63];

			x1_15 <= x1_1;
			x2_15 <= x2_1;
			eyd1_05 <= eyd1;
			udf_05 <= udf;

////////////////////

			r2 = {2'b10, 63'd0} - {1'd0, b1};
			a2_ = a1 * r2[63:0];
			a2 <= a2_[126:63];
			b2_ = b1 * r2[63:0];
			b2 <= b2_[126:63];

			x1_2 <= x1_15;
			x2_2 <= x2_15;
			//符号決定
			sy <= x1_15[31] ^ x2_15[31];
			eyd1_1 <= eyd1_05;
			udf_1 <= udf_05;

///////////////////
			r3 = {2'b10, 63'd0} - {1'd0, b2};
			a3_ = a2 * r3[63:0];
			a3 = a3_[126:63];

			myd2 = {a3[63:38], |(a3[37:0])};//G1, R1, S1
			
			//繰り下がり補正, 1/2<my<2, 正規化数が非正規化数になることはある
			myd3 = (myd2[26]) ? {myd2[26:2], |(myd2[1:0])} ://繰り下がりなし
				   (eyd1_1 == 9'd0) ? 26'd0 ://eyd1_1=1でも0の気がする
				   myd2[25:0];//繰り下がりあり
			eyd2 = (myd2[26]) ? eyd1_1 :
				   (eyd1_1 == 9'd0) ? eyd1_1 :
				   eyd1_1 - 9'd1;

			//丸め
			myd4 = {1'b0, myd3[25:2]} + {24'd0, myd3[1] & (myd3[2] | myd3[0])};//繰り上がり1+けち1+23

			eyd3 = ((eyd2==9'd0) && &(myd4[23:0])) ? 9'd1 ://1.11...*2^-127だけ特別に処理
				   (myd4[24]) ? eyd2 + 9'd1 :
				   eyd2;
			my = (eyd2==9'd0) ? 23'd0 : myd4[22:0];//特別な場合も非正規化数の場合も0
			ey = |(x1_2[30:23]) ? eyd3[7:0] : 8'd0;

			nzm1 = |(x1_2[22:0]);
			nzm2 = |(x2_2[22:0]);
			y_reg = (x1_2[30:23]==8'd255 && nzm1) ? {x1_2[31], 8'd255, nzm1, x1_2[21:0]} ://x1=NaN
					(x2_2[30:23]==8'd255 && nzm2) ? {x2_2[31], 8'd255, nzm2, x2_2[21:0]} ://x2=NaN
					(x1_2[30:23]==8'd0 && x2_2[30:23]==8'd0) ? {1'd1, 8'd255, 1'd1, 22'd0} ://0/0=-nan
					(x2_2[30:23]==8'd0) ? {sy, 8'd255, 23'd0} ://0割り
					(x1_2[30:23]==8'd255 && x2_2[30:23]==8'd255) ? {1'd1, 8'd255, 1'd1, x1_2[21:0]} ://inf/inf
					(x1_2[30:23]==8'd255) ? {sy, 8'd255, 23'd0} :
					(x2_2[30:23]==8'd255) ? {sy, 31'd0} :
					udf_1 ? {sy, 31'd0} :
					(eyd3>=9'd255) ? {sy, 8'd255, 23'd0} :
					{sy, ey, my};
			
			ovf_reg = x1_2[30:23]<8'd255 && x2_2[30:23]<8'd255 && ((~udf_1 && eyd3>=9'd255) || x2_2[30:23]==8'd0);
			div0_reg = x2_2[30:23]==8'd0;
		end
	end
endmodule

module fsqrt
	(input wire [31:0]	x,
	 output wire [31:0]	y,
	 output wire		minus,//x<0
	 input wire			clk,
	 input wire			enable);

	//eaを奇数に(本当の指数を偶数に)
	//Goldschmidt

	reg [23:0]	ma;
	reg [7:0]	ea;
	reg [4:0]	lshift1;
	reg [23:0]	myd1;
	reg [8:0]	eyd1;
	reg [24:0]	myd2;
	reg [7:0]	eyd2, eyd2_05, eyd2_1;
	reg [31:0]	x_1, x_15, x_2;
	reg [40:0]	z0_;
	reg [31:0]	z0, x0, y0, z1, x1, y1, z2, x2, y2, z3, x3, y3;
	reg [95:0]	x0_, x1_, x2_, x3_;
	reg [63:0]	y0_, y1_, y2_, y3_;
	reg [31:0]	myd3;
	reg [7:0]	eyd3;
	reg [24:0]	myd4;
	reg [22:0]	my;
	reg [7:0]	ey;
	reg			nzm;
	reg [31:0]	y_reg;
	reg			minus_reg;

	assign y = y_reg;
	assign minus = minus_reg;

	always @(posedge clk) begin
		if (~enable) begin
			y_reg <= 32'd0;
			minus_reg <= 1'd0;
		end else begin
			ma = (x[30:23]==8'd0) ? 24'd0 : {1'b1, x[22:0]};//非正規化数は0とする
			ea = (x[30:23]==8'd0) ? 8'd0 : x[30:23];
			
			//シフトによって元の数を[0.5, 2)に収める
			//xの本当の指数はea-127 これが奇数ならeaを+1して仮数を1右シフト
			eyd1 = {1'd0, ea} + {8'd0, ~ea[0]};
			myd2 = {ma, 1'd0} >> (~ea[0]);

			//指数を2で割る
			eyd2 <= eyd1[8:1] + 8'd64;
			//√xの本当の指数はeyd2-127

			//仮数をgoldschmidtで求める
			z0_ = 16'b0011011011110010 * myd2;
			z0 = 32'b10111110011000101100000001111010 - z0_[39:8];

			x0_ = ({myd2, 7'd0} * z0 * z0);
			x0 <= x0_[93:62];
			y0_ = ({myd2, 7'd0} * z0);
			y0 <= y0_[62:31];

			x_1 <= x;
////////////////////

			z1 = {2'b11, 30'd0} - (x0 >> 1);
			x1_ = (x0 * z1 * z1);
			x1 <= x1_[93:62];
			y1_ = (y0 * z1);
			y1 <= y1_[62:31];

			x_15 <= x_1;
			eyd2_05 <= eyd2;
////////////////////

			z2 = {2'b11, 30'd0} - (x1 >> 1);
			x2_ = (x1 * z2 * z2);
			x2 <= x2_[93:62];
			y2_ = (y1 * z2);
			y2 <= y2_[62:31];

			eyd2_1 <= eyd2_05;
			x_2 <= x_15;
///////////////////
			
			z3 = {2'b11, 30'd0} - (x2 >> 1);
			x3_ = (x2 * z3 * z3);
			x3 = x3_[93:62];
			y3_ = (y2 * z3);
			y3 = y3_[62:31];

			//桁合わせ(√xは非正規化数にはならない)
			myd3 = y3 << (~y3[31]);
			eyd3 = eyd2_1 - {7'd0, ~y3[31]};//eyd2>=52

			//丸め
			myd4 = {1'd0, myd3[31:8]} + {24'd0, (myd3[7] & (myd3[8] | (|(myd3[6:0]))))};

			//桁上がり補正
			my = myd4[24] ? myd4[23:1] : myd4[22:0];
			ey = eyd3 + {7'd0, myd4[24]};

			nzm = |(x_2[22:0]);
			y_reg = (x_2[30:23]==8'd255) ? {x_2[31:23], (nzm|x_2[31]), x_2[21:0]} ://inf, nan
					(x_2[31] && |(x_2[30:23])) ? {1'd1, 8'd255, 1'd1, 22'd0} ://x<0ならNaN
					~|(x_2[30:23]) ? {x_2[31], 31'd0} ://0は符号そのままで0
					{1'd0, ey, my};
			minus_reg = x_2[31];
		end
	end
endmodule

module fabs
	(input wire [31:0]	x,
	 output wire [31:0]	y,
	 input wire			clk,
	 input wire			enable);

	reg [31:0]	y_reg, y_reg1, y_reg2, y_reg3;

	assign y = y_reg3;

	always @(posedge clk) begin
		if (~enable) begin
			y_reg <= 32'd0;
		end else begin//enable
			y_reg <= {1'd0, x[30:0]};
/////////////////
			y_reg1 <= y_reg;
/////////////////
			y_reg2 <= y_reg1;
/////////////////
			y_reg3 = y_reg2;
		end
	end
endmodule

module fneg
	(input wire [31:0]	x,
	 output wire [31:0]	y,
	 input wire			clk,
	 input wire			enable);

	reg [31:0]	y_reg, y_reg1, y_reg2, y_reg3;
	
	assign y = y_reg3;

	always @(posedge clk) begin
		if (~enable) begin
			y_reg <= 32'd0;
		end else begin
			y_reg <= {~x[31], x[30:0]};
/////////////////
			y_reg1 <= y_reg;
/////////////////
			y_reg2 <= y_reg1;
/////////////////
			y_reg3 = y_reg2;
		end
	end
endmodule

module floor
	(input wire [31:0]	x,
	 output wire [31:0]	y,
	 input wire			clk,
	 input wire			enable);

	//元々整数だったらそのまま出力(e>=23+127=150)
	//e<=126なら0 or -1
	//それ以外(127<=e<150)...仮数部を左シフトして小数点の位置を合わせる
	reg [7:0]	lshift;
	reg [45:0]	myd1;
	reg [23:0]	myd2;
	reg [46:0]	myd3;
	reg [7:0]	ey;
	reg [31:0]	y_reg, y_reg1, y_reg2, y_reg3;

	assign y = y_reg3;

	always @(posedge clk) begin
		if (~enable) begin
			y_reg <= 32'd0;
		end else begin
			lshift = (x[30:23] - 8'd127);//最大22シフト
			myd1 = {23'd1, x[22:0]} << (lshift[4:0]);

			//小数点以下が0でないとき, 正ならそのまま, 負なら+1
			myd2 = {1'd0, myd1[45:23]} + {23'd0, (x[31] & |(myd1[22:0]))};//MSBは繰り上がり分

			//シフトを元に戻す
			myd3 = {myd2[23:0], 23'd0} >> (lshift[4:0]);

			//負の場合の繰り上がり補正
			ey = x[30:23] + {7'd0, myd3[24]};
			//繰り上がりが起きた時下のbitはどうせ全部0なので, シフトし直す必要はない

			y_reg <= (x[30:23] == 8'd255 && |(x[22:0])) ? {x[31:23], 1'd1, x[21:0]} ://nan
					 (x[30:23] >= 8'd150) ? x :
					 (x[30:23] <= 8'd126 && (x[31] & |(x[30:0]))) ? {1'd1, 8'd127, 23'd0} ://-1
					 (x[30:23] <= 8'd126) ? {x[31], 31'd0} :
					 {x[31], ey, myd3[22:0]};
/////////////////
			y_reg1 <= y_reg;
/////////////////
			y_reg2 <= y_reg1;
/////////////////
			y_reg3 = y_reg2;
		end
	end
endmodule

module ftoi
	(input wire [31:0]	x,
	 output wire [31:0]	y,//-2^31 ~ 2^31-1
	 output wire		ovf,
	 output wire		nan,
	 input wire			clk,
	 input wire			enable);

	reg			sy;
	reg [23:0]	ma;
	reg [55:0]	yd1;
	reg [32:0]	yd2;
	reg [31:0]	y_reg, y_reg1, y_reg2, y_reg3;
	reg			ovf_reg, ovf_reg1, ovf_reg2, ovf_reg3;
	reg			nan_reg, nan_reg1, nan_reg2, nan_reg3;

	assign y = y_reg3;
	assign ovf = ovf_reg3;
	assign nan = nan_reg3;

	always @(posedge clk) begin
		if (~enable) begin
			y_reg <= 32'd0;
			ovf_reg <= 1'd0;
			nan_reg <= 1'd0;
		end else begin
			sy = x[31];
			ma = (x[30:23]==8'd0) ? {1'd0, x[22:0]} : {1'd1, x[22:0]};

			//正だと思って計算して, 負ならビット反転+1

			//e=126だと繰り上がり次第
			//e<126なら0
			//e>126ならシフトして丸め
			
			//e>127+31=158ならovf

			//シフトして小数点の位置を合わせる
			yd1 = (x[30:23]==8'd126) ? {32'd0, ma} ://e=126だと繰り上がり次第
				  {31'd0, ma, 1'd0} << (x[30:23] - 8'd127);
	
			//丸め(system verilog的には四捨五入で良いっぽい)
			yd2 = {1'd0, yd1[55:24]} + {32'd0, yd1[23]};//MSB:繰り上がり用
	
			y_reg <= (x[30:23]==8'd255 && |(x[22:0])) ? 32'd0 ://NaN
					 (x[30:23]>8'd158) ? 32'd0 ://32bit以上シフトでovf
					 (x[30:23]<8'd126) ? 32'd0 ://0
					 (yd2=={2'b01, 31'd0} && sy) ? {1'b1, 31'd0} ://-2^31
					 (yd2[32] || yd2[31]) ? 32'd0 ://ovf
					 sy ? (~yd2[31:0]) + 32'd1 ://負の場合はbit反転+1
					 yd2[31:0];
	
			ovf_reg <= (x[30:23]==8'd255 && |(x[22:0])) ? 1'b0 ://NaN
					   (x[30:23]>8'd158) ? 1'b1 ://32bit以上シフト
					   (x[30:23]<8'd126) ? 1'b0 :
					   (yd2=={2'b01, 31'd0} && sy) ? 1'b0 ://-2^31
					   (yd2[32] || yd2[31]) ? 1'b1 :
					   1'b0;
	
			nan_reg <= (x[30:23]==8'd255 && |(x[22:0]));
///////////////////
			y_reg1 <= y_reg;
			ovf_reg1 <= ovf_reg;
			nan_reg1 <= nan_reg;
///////////////////
			y_reg2 <= y_reg1;
			ovf_reg2 <= ovf_reg1;
			nan_reg2 <= nan_reg1;
///////////////////
			y_reg3 = y_reg2;
			ovf_reg3 = ovf_reg2;
			nan_reg3 = nan_reg2;
		end
	end
endmodule

module itof
	(input wire [31:0]	x,//-2^31 ~ 2^31-1
	 output wire [31:0]	y,
	 input wire			clk,
	 input wire			enable);

	reg			sy;
	reg [31:0]	myd1;
	reg [4:0]	rshift;
	reg [62:0]	myd2;
	reg [24:0]	myd3;
	reg [7:0]	ey;
	reg [31:0]	y_reg, y_reg1, y_reg2, y_reg3;

	assign y = y_reg3;

	always @(posedge clk) begin
		if (~enable) begin
			y_reg <= 32'd0;
		end else begin
			sy = x[31];

			//xの絶対値を取る
			myd1 = x[31] ? (~x + 32'd1) : x;

			//right shift
			rshift = myd1[31] ? 5'd31 :
					 myd1[30] ? 5'd30 :
					 myd1[29] ? 5'd29 :
					 myd1[28] ? 5'd28 :
					 myd1[27] ? 5'd27 :
					 myd1[26] ? 5'd26 :
					 myd1[25] ? 5'd25 :
					 myd1[24] ? 5'd24 :
					 myd1[23] ? 5'd23 :
					 myd1[22] ? 5'd22 :
					 myd1[21] ? 5'd21 :
					 myd1[20] ? 5'd20 :
					 myd1[19] ? 5'd19 :
					 myd1[18] ? 5'd18 :
					 myd1[17] ? 5'd17 :
					 myd1[16] ? 5'd16 :
					 myd1[15] ? 5'd15 :
					 myd1[14] ? 5'd14 :
					 myd1[13] ? 5'd13 :
					 myd1[12] ? 5'd12 :
					 myd1[11] ? 5'd11 :
					 myd1[10] ? 5'd10 :
					 myd1[9] ? 5'd9 :
					 myd1[8] ? 5'd8 :
					 myd1[7] ? 5'd7 :
					 myd1[6] ? 5'd6 :
					 myd1[5] ? 5'd5 :
					 myd1[4] ? 5'd4 :
					 myd1[3] ? 5'd3 :
					 myd1[2] ? 5'd2 :
					 myd1[1] ? 5'd1 :
					 myd1[0] ? 5'd0 :
					 5'd0;
			myd2 = {myd1, 31'd0} >> rshift;

			//丸め
			myd3 = myd2[32:8] + {24'd0, (myd2[7] & (myd2[8] | (|(myd2[6:0])) ))};//繰り上がり1+けち1+仮数23

			//指数の決定と繰り上がり補正
			ey = {3'd0, rshift} + {7'd0, myd3[24]} + 8'd127;
			//繰り上がったらどうせ23'd0になるので補正しなくても変わらない

			y_reg <= (x==32'd0) ? 32'd0 : {sy, ey, myd3[22:0]};
/////////////////
			y_reg1 <= y_reg;
/////////////////
			y_reg2 <= y_reg1;
/////////////////
			y_reg3 = y_reg2;
		end
	end
endmodule

module fpu4//3クロックで答えを返す
	(input wire [5:0]	op1,//元の命令の31-26bit
	 input wire [4:0]	fmt,//元の命令の25-21bit
	 input wire [31:0]	x1,//fs(元の命令の15-11bitに書かれているレジスタ)の値<-x1とx2の順番注意
	 input wire [31:0]	x2,//ft(元の命令の20-16bitに書かれているレジスタ)の値
	 input wire [5:0]	op2,//元の命令の5-0bit
	 output wire [31:0]	y,//返り値
	 output wire [3:0]	exception,
	 input wire			clk,
	 input wire			rstn);//resetしたい最初だけ0にして, 以降はずっと1
	//exception=0000:ok, 0--1:overflow, 0-1-:nan, 01--:div0, 1000:invalid op

	wire [31:0]	y_addsub, y_mul, y_div, y_sqrt, y_abs, y_neg, y_floor, y_ftoi, y_itof;
	wire		ovf_addsub, ovf_mul, ovf_div, div0, minus,  ovf_ftoi, nan;
	reg [31:0]	y_reg;
	reg [3:0]	exception_reg;
	reg [5:0]	op1_1, op1_2, op1_3, op1_4, op2_1, op2_2, op2_3, op2_4;
	reg [4:0]	fmt_1, fmt_2, fmt_3, fmt_4;

	faddsub u_addsub(x1, x2, op2[0], y_addsub, ovf_addsub, clk, rstn);
	fmul u_mul(x1, x2, y_mul, ovf_mul, clk, rstn);
	fdiv u_div(x1, x2, y_div, ovf_div, div0, clk, rstn);
	fsqrt u_sqrt(x1, y_sqrt, minus, clk, rstn);
	fabs u_abs(x1, y_abs, clk, rstn);
	fneg u_neg(x1, y_neg, clk, rstn);
	floor u_floor(x1, y_floor, clk, rstn);
	ftoi u_ftoi(x1, y_ftoi, ovf_ftoi, nan, clk, rstn);
	itof u_itof(x2, y_itof, clk, rstn);

	assign y = (op1_4==6'b010001 && fmt_4==5'b10000 && op2_4[5:1]==5'd0) ? y_addsub :
			   (op1_4==6'b010001 && fmt_4==5'b10000 && op2_4==6'b000010) ? y_mul :
			   (op1_4==6'b010001 && fmt_4==5'b10000 && op2_4==6'b000011) ? y_div :
			   (op1_4==6'b010001 && fmt_4==5'b10000 && op2_4==6'b000100) ? y_sqrt :
			   (op1_4==6'b010001 && fmt_4==5'b10000 && op2_4==6'b000101) ? y_abs :
			   (op1_4==6'b010001 && fmt_4==5'b10000 && op2_4==6'b000111) ? y_neg :
			   (op1_4==6'b010001 && fmt_4==5'b10000 && op2_4==6'b001111) ? y_floor :
			   (op1_4==6'b010001 && fmt_4==5'b00000 && op2_4==6'b000000) ? y_ftoi :
			   (op1_4==6'b010001 && fmt_4==5'b00100 && op2_4==6'b000000) ? y_itof :
			   32'd0;
	assign exception = (op1_4==6'b010001 && fmt_4==5'b10000 && op2_4[5:1]==5'd0) ? {3'd0, ovf_addsub} :
					   (op1_4==6'b010001 && fmt_4==5'b10000 && op2_4==6'b000010) ? {3'd0, ovf_mul} :
					   (op1_4==6'b010001 && fmt_4==5'b10000 && op2_4==6'b000011) ? {1'b0, div0, 1'b0, ovf_div} :
					   (op1_4==6'b010001 && fmt_4==5'b10000 && op2_4==6'b000100) ? {2'd0, minus, 1'd0} :
					   (op1_4==6'b010001 && fmt_4==5'b10000 && op2_4==6'b000101) ? 4'd0 ://fabs
					   (op1_4==6'b010001 && fmt_4==5'b10000 && op2_4==6'b000111) ? 4'd0 ://fneg
					   (op1_4==6'b010001 && fmt_4==5'b10000 && op2_4==6'b001111) ? 4'd0 ://floor
					   (op1_4==6'b010001 && fmt_4==5'b00000 && op2_4==6'b000000) ? {2'd0, nan, ovf_ftoi} :
					   (op1_4==6'b010001 && fmt_4==5'b00100 && op2_4==6'b000000) ? 4'd0 ://itof
					   4'b1000;

	always @(posedge clk) begin
		if (~rstn) begin
			y_reg <= 32'd0;
			exception_reg <= 4'd0;
		end else begin
			op1_1 <= op1;
			op2_1 <= op2;
			fmt_1 <= fmt;
/////////////////
			op1_2 <= op1_1;
			op2_2 <= op2_1;
			fmt_2 <= fmt_1;
/////////////////
			op1_3 <= op1_2;
			op2_3 <= op2_2;
			fmt_3 <= fmt_2;
/////////////////
			op1_4 <= op1_3;
			op2_4 <= op2_3;
			fmt_4 <= fmt_3;
		end
	end
endmodule
`default_nettype wire
