`default_nettype none
module fadd//符号同じ
	(input wire [31:0]	x1,
	 input wire [31:0]	x2,
	 output wire [31:0]	y,
	 output wire		ovf);

	wire [23:0]	m1a = (x1[30:23]==8'd0) ? {1'b0, x1[22:0]} : {1'b1, x1[22:0]};
	wire [23:0]	m2a = (x2[30:23]==8'd0) ? {1'b0, x2[22:0]} : {1'b1, x2[22:0]};//非正規化数かどうかで場合分け
	wire [7:0]	e1a = (x1[30:23]==8'd0) ? 8'd1 : x1[30:23];//非正規化数なら本当の指数は-126なので, バイアス値127を足した1を入れる
	wire [7:0]	e2a = (x2[30:23]==8'd0) ? 8'd1 : x2[30:23];

	//指数が大きい方がw, 小さい方がl
	wire [7:0]	ew = (e1a>=e2a) ? e1a : e2a;
	wire [7:0]	el = (e1a>=e2a) ? e2a : e1a;
	wire [23:0]	mw = (e1a>=e2a) ? m1a : m2a;
	wire [23:0]	ml = (e1a>=e2a) ? m2a : m1a;

	//指数の差だけmlを右シフト
	wire [7:0]	eshift = ew - el;
	wire [47:0] mls1 = {ml, 24'd0} >> eshift;
	wire [25:0]	mls2 = {mls1[47:23], |(mls1[22:0])};//シフト後の仮数24+G1+R1
	
	//加算
	wire [26:0]	myd1 = {1'd0, mw, 2'd0} + {1'd0, mls2};//繰り上がり1+仮数24+G1+R1
	
	//繰り上がり補正(正規化数でのみ起こる)
	wire [26:0]	myd2 = (myd1[26]) ? {1'd0, myd1[26:2], |(myd1[1:0])} : myd1;
	wire [8:0]	eyd1 = (myd1[26]) ? {1'd0, ew} + {9'd1} : {1'd0, ew};

	//丸め
	wire [24:0] myd3 = myd2[26:2] + {24'd0, (myd2[1] & (myd2[2] | myd2[0]))};//繰り上がり1+仮数24

	//繰り上がり補正(正規, 非正規どちらも)
	wire [8:0]	eyd2 = (myd3[24] && eyd1==9'd1) ? 9'd1 ://非正規化数が正規化数になった
					   (myd3[24]) ? eyd1 + 9'd1 :
					   eyd1;
	wire [23:0]	myd4 = (myd3[24]) ? {1'd1, 23'd0} : myd3[23:0];//ケチ1+仮数23
	
	wire		ovf1 = eyd2 >= 9'd255;
	wire [7:0]	ey = myd4[23] ? eyd2[7:0] : 8'd0;
	wire [22:0]	my = ovf1 ? 23'd0 : myd4[22:0];
	
	assign y = {x1[31], ey, my};//非数とかは上位モジュールで判定
	assign ovf = (x1[30:23]<8'd255 && x2[30:23]<8'd255) ? ovf1 : 1'd0;
endmodule

module fsub//符号違う
	(input wire [31:0]	x1,
	 input wire [31:0]	x2,
	 output wire [31:0]	y,
	 output wire		ovf);//overflowしないけど

	wire [23:0]	m1a = (x1[30:23]==8'd0) ? {1'b0, x1[22:0]} : {1'b1, x1[22:0]};
	wire [23:0]	m2a = (x2[30:23]==8'd0) ? {1'b0, x2[22:0]} : {1'b1, x2[22:0]};//非正規化数かどうかで場合分け
	wire [7:0]	e1a = (x1[30:23]==8'd0) ? 8'd1 : x1[30:23];//非正規化数なら本当の指数は-126なので, バイアス値127を足した1を入れる
	wire [7:0]	e2a = (x2[30:23]==8'd0) ? 8'd1 : x2[30:23];

	//絶対値が大きい方がw, 小さい方がl
	wire [7:0]	ew = (x1[30:0]>=x2[30:0]) ? e1a : e2a;
	wire [7:0]	el = (x1[30:0]>=x2[30:0]) ? e2a : e1a;
	wire [23:0]	mw = (x1[30:0]>=x2[30:0]) ? m1a : m2a;
	wire [23:0]	ml = (x1[30:0]>=x2[30:0]) ? m2a : m1a;
	wire		sy = (x1[30:0]>x2[30:0]) ? x1[31] :
					 (x1[30:0]==x2[30:0]) ? 1'd0 ://同じ数の減算結果は+0
					 x2[31];

	//指数の差だけmlを右シフト
	wire [7:0]	eshift = ew - el;
	wire [48:0] mls1 = {ml, 25'd0} >> eshift;
	wire [26:0]	mls2 = {mls1[48:23], |(mls1[22:0])};//シフト後の仮数24+G1+R1+S1
	
	//減算
	wire [26:0]	myd1 = {mw, 3'd0} - mls2;//仮数24+G1+R1+S1
	
	//繰り下がり補正
	wire [4:0]	lshift = myd1[26] ? 5'd0 :
						 myd1[25] ? 5'd1 :
						 myd1[24] ? 5'd2 :
						 myd1[23] ? 5'd3 :
						 myd1[22] ? 5'd4 :
						 myd1[21] ? 5'd5 :
						 myd1[20] ? 5'd6 :
						 myd1[19] ? 5'd7 :
						 myd1[18] ? 5'd8 :
						 myd1[17] ? 5'd9 :
						 myd1[16] ? 5'd10 :
						 myd1[15] ? 5'd11 :
						 myd1[14] ? 5'd12 :
						 myd1[13] ? 5'd13 :
						 myd1[12] ? 5'd14 :
						 myd1[11] ? 5'd15 :
						 myd1[10] ? 5'd16 :
						 myd1[9] ? 5'd17 :
						 myd1[8] ? 5'd18 :
						 myd1[7] ? 5'd19 :
						 myd1[6] ? 5'd20 :
						 myd1[5] ? 5'd21 :
						 myd1[4] ? 5'd22 :
						 myd1[3] ? 5'd23 :
						 myd1[2] ? 5'd24 :
						 myd1[1] ? 5'd25 :
						 myd1[0] ? 5'd26 :
						 5'd0;						 
	wire [26:0]	myd2 = ({3'd0, lshift} < ew) ? myd1 << lshift :
					   (ew>8'd1) ? myd1 << (ew-8'd1) ://正規化数が非正規化数になるパターン
					   myd1;//元々非正規化数
	wire [7:0]	eyd1 = ({3'd0, lshift} < ew) ? ew - {3'd0, lshift} : 8'd1;

	//丸め
	wire [24:0] myd3 = {1'd0, myd2[26:3]} + {24'd0, (myd2[2] & (myd2[3] | myd2[1] | myd2[0]))};//繰り上がり1+仮数24

	//繰り上がり補正
	wire [7:0]	eyd2 = (myd3[24] && eyd1==8'd1) ? 8'd1 ://非正規化数が正規化数になった
					   (myd3[24]) ? eyd1 + 8'd1 :
					   eyd1;
	wire [23:0]	myd4 = (myd3[24]) ? {1'd1, 23'd0} : myd3[23:0];//ケチ1+仮数23
	
	wire [7:0]	ey = myd4[23] ? eyd2[7:0] : 8'd0;
	wire [22:0]	my = myd4[22:0];
	
	assign y = {sy, ey, my};//非数とかは上位モジュールで判定
	assign ovf = 1'd0;
endmodule

module faddsub
	(input wire [31:0]	x1,
	 input wire [31:0]	x2,
	 input wire			a_s,//add:0, sub:1
	 output wire [31:0]	y,
	 output wire		ovf);

	wire [31:0]	ya;//y_add
	wire [31:0]	ys;//y_sub
	wire		ovfa;//ovf_add
	wire		ovfs;//ovf_sub

	//符号を変えてa+bの形にする
	wire		s2 = a_s ^ x2[31];
	
	fadd ua(x1, {s2, x2[30:0]}, ya, ovfa);
	fsub us(x1, {s2, x2[30:0]}, ys, ovfs);

	wire		nzm1 = |(x1[22:0]);
	wire		nzm2 = |(x2[22:0]);

	assign y = (x1[30:23]==8'd255 && x2[30:23]!=8'd255) ? {x1[31],8'd255,nzm1,x1[21:0]} :
			   (x1[30:23]!=8'd255 && x2[30:23]==8'd255) ? {x2[31],8'd255,nzm2,x2[21:0]} :
			   (x1[30:23]==8'd255 && x2[30:23]==8'd255 && nzm2) ? {x2[31],8'd255,1'b1,x2[21:0]} :
			   (x1[30:23]==8'd255 && x2[30:23]==8'd255 && nzm1) ? {x1[31],8'd255,1'b1,x1[21:0]} :
			   (x1[30:23]==8'd255 && x2[30:23]==8'd255 && x1[31]==x2[31]) ? {x1[31],8'd255,23'b0} :
			   (x1[30:23]==8'd255 && x2[30:23]==8'd255) ? {1'b1,8'd255,1'b1,22'b0} :
			   (x1[31]==s2) ? ya : ys;
	
	assign ovf = (x1[30:23]<8'd255 && x2[30:23]<8'd255 && (x1[31]==s2)) ? ovfa : 1'b0;
endmodule

module fmul
	(input wire [31:0]	x1,
	 input wire [31:0]	x2,
	 output wire [31:0]	y,
	 output wire		ovf);

	wire		s1 = x1[31];
	wire		s2 = x2[31];
	wire [23:0]	m1a = (x1[30:23]==8'd0) ? {1'b0, x1[22:0]} : {1'b1, x1[22:0]};//非正規化数かどうかで場合分け
	wire [23:0]	m2a = (x2[30:23]==8'd0) ? {1'b0, x2[22:0]} : {1'b1, x2[22:0]};
	wire [7:0]	e1a = (x1[30:23]==8'd0) ? 8'd1 : x1[30:23];//非正規化数なら本当の指数は-126なので, バイアス値127を足した1を入れる(dであることに注意)
	wire [7:0]	e2a = (x2[30:23]==8'd0) ? 8'd1 : x2[30:23];//e2a-127が本当の指数

	//符号決定
	wire		sy = s1 ^ s2;

	//指数(仮)の加算
	wire [8:0]	eyd1 = {1'b0, e1a} + {1'b0, e2a};//繰り上がり分を考慮して9bit, 127引いて負になると怖いので先に判定
	wire [1:0]	n_dn = (eyd1<9'd127) ? 2'b10 ://結果が必ず非正規化数
					   (eyd1==9'd127) ? 2'b01 ://繰り上がりが生じれば正規化数
					   2'b00;
	wire [8:0]	eyd2 = eyd1 - 9'd127;
	
	//仮数の積算
	wire [47:0]	myd1 = {24'd0, m1a} * {24'b0, m2a};

	//正規化数の場合, 最上位ビットが1なら右シフト
	wire [47:0] myd2_n = myd1[47] ? myd1>>1 : myd1;
	wire [8:0]	eyd3_n = eyd2 + {8'd0, myd1[47]};
	//wire		ovf1 = eyd3 >= 9'd255;
	//非正規化数の場合(n_dn==10)
	wire [95:0]	myd2_den1 = ({myd1, 48'd0}>>(9'd128-eyd1));
	wire [47:0]	myd2_den = {myd2_den1[95:49], |(myd2_den1[48:0])};
	//wire [47:0]	myd2_den = (myd1>>(9'd128-eyd1));
	wire [8:0]	eyd3_den = 9'd0;

	wire [47:0]	myd2 = ((n_dn==2'b00)||(n_dn==2'b01 && myd1[47])) ? myd2_n : myd2_den;//元から正規か, 非正規から正規になったか
	wire [8:0]	eyd3 = ((n_dn==2'b00)||(n_dn==2'b01 && myd1[47])) ? eyd3_n : eyd3_den;

	//正規化のため左シフト(priority encoder)(最大48シフトなので6bit)(入力のどちらかが非正規化数の時)
	wire [5:0]	lshift = myd2[46] ? 6'd0 :
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
	wire [47:0]	myd3 = (lshift<eyd3) ? myd2<<lshift :
					   (lshift==eyd3) ? (myd2<<lshift)>>1 ://eyd3だけシフトするとケチ1が消えてしまう, 気持ちとしてはmyd2<<(lshift-1)
					   (n_dn==2'b00) ? (myd2<<eyd3)>>1 ://正規化数が非正規化数になるパターン
					   myd2<<eyd3;
	wire [8:0]	eyd4 = (lshift<=eyd3) ? eyd3 - lshift : 9'd0;
	
	//丸め
	wire [26:0] myd4 = {myd3[47:22], |(myd3[21:0])};//繰り上がり1, 頭1, 仮数部23, G1, R1
	wire [24:0] myd5 = myd4[26:2] + {24'd0, (myd4[1] & (myd4[2] | myd4[0]))};

	//指数調整
	wire [8:0]	eyd5 = (myd5[24]) ? eyd4 + 9'd1 :
					   (eyd4==9'd0 && myd5[23]) ? 9'd1 ://非正規化数が正規化数になった
					   (myd1==48'd0) ? 9'd0 ://0
					   eyd4;
	wire [22:0]	my = (myd5[24]) ? 23'd0 : myd5[22:0];//桁上がりが起きたら仮数は0になる

	wire		ovf1 = eyd5>=9'd255;

	wire		nzm1 = |(x1[22:0]);
	wire		nzm2 = |(x2[22:0]);
	assign y = (x1[30:23]==8'd255 && x2[30:23]!=8'd255 && nzm1) ? {s1, 8'd255, nzm1, x1[21:0]} :
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
	assign ovf = (x1[30:23]<8'd255 && x2[30:23]<8'd255) ? ovf1 : 1'd0;
endmodule

module fdiv
	(input wire [31:0]	x1,
	 input wire [31:0]	x2,
	 output wire [31:0]	y,
	 output wire		ovf,
	 output wire		div0);

	wire		s1 = x1[31];
	wire		s2 = x2[31];
	wire [23:0]	m1a = (x1[30:23]==8'd0) ? {1'b0, x1[22:0]} : {1'b1, x1[22:0]};//非正規化数かどうかで場合分け
	wire [23:0]	m2a = (x2[30:23]==8'd0) ? {1'b0, x2[22:0]} : {1'b1, x2[22:0]};
	wire [7:0]	e1a = (x1[30:23]==8'd0) ? 8'd1 : x1[30:23];//非正規化数なら本当の指数は-126なので, バイアス値127を足した1を入れる(dであることに注意)
	wire [7:0]	e2a = (x2[30:23]==8'd0) ? 8'd1 : x2[30:23];//e2a-127が本当の指数

	//符号決定
	wire		sy = s1 ^ s2;

	//桁揃え(これによって無駄な左シフトが無くなるかも)
	wire [5:0]	lshift0 = m1a[23] ? 6'd0 :
						  m1a[22] ? 6'd1 :
						  m1a[21] ? 6'd2 :
						  m1a[20] ? 6'd3 :
						  m1a[19] ? 6'd4 :
						  m1a[18] ? 6'd5 :
						  m1a[17] ? 6'd6 :
						  m1a[16] ? 6'd7 :
						  m1a[15] ? 6'd8 :
						  m1a[14] ? 6'd9 :
						  m1a[13] ? 6'd10 :
						  m1a[12] ? 6'd11 :
						  m1a[11] ? 6'd12 :
						  m1a[10] ? 6'd13 :
						  m1a[9] ? 6'd14 :
						  m1a[8] ? 6'd15 :
						  m1a[7] ? 6'd16 :
						  m1a[6] ? 6'd17 :
						  m1a[5] ? 6'd18 :
						  m1a[4] ? 6'd19 :
						  m1a[3] ? 6'd20 :
						  m1a[2] ? 6'd21 :
						  m1a[1] ? 6'd22 :
						  m1a[0] ? 6'd23 :
						  6'd0;
	wire [23:0]	m1a_ = m1a << lshift0;
	wire [8:0]	e2a_ = {1'd0, e2a} + {3'd0, lshift0};

	//指数(仮)の減算(eyd1は-23まで表したいので+23のゲタを履かせる)
	wire [8:0]	eyd1 = {1'd0, e1a} + 9'd127 + 9'd23 - {1'd0, e2a_};//eyd1>255+23ならovf, eyd1<0ならudf
	wire		udf = ({1'd0, e1a} + 9'd127 + 9'd23) < {1'd0, e2a_};//underflow or 非正規化, 127<e2aよりx2は正規化数なので, 除算によって繰り上がりが起こることはない
	//eyd1=24だと繰り下がれば非正規化数, 255+23だと繰り下がれば正規化数

	//仮数の除算()
	wire [48:0]	myd1 = {m1a_, 25'd0} / m2a;//小数点以下を求めるため被除数を24bitシフト, G1,R1
	//上の除算で余りがあればSビット=1
	wire		s = ({m1a_, 25'd0} % m2a) > 24'd0;

	wire [49:0] myd2 = {myd1, s};//G1, S1
	
	//小数点の位置合わせ, この時非正規化数が正規化数になることはない(繰り上がりが起こるのはx2が非正規化数のときだけだが, この時eyd1>=127)
	wire [5:0]	shift = myd2[49] ? 6'd49 ://shift-26だけ右シフト
						myd2[48] ? 6'd48 :
						myd2[47] ? 6'd47 :
						myd2[46] ? 6'd46 :
						myd2[45] ? 6'd45 :
						myd2[44] ? 6'd44 :
						myd2[43] ? 6'd43 :
						myd2[42] ? 6'd42 :
						myd2[41] ? 6'd41 :
						myd2[40] ? 6'd40 :
						myd2[39] ? 6'd39 :
						myd2[38] ? 6'd38 :
						myd2[37] ? 6'd37 :
						myd2[36] ? 6'd36 :
						myd2[35] ? 6'd35 :
						myd2[34] ? 6'd34 :
						myd2[33] ? 6'd33 :
						myd2[32] ? 6'd32 :
						myd2[31] ? 6'd31 :
						myd2[30] ? 6'd30 :
						myd2[29] ? 6'd29 :
						myd2[28] ? 6'd28 :
						myd2[27] ? 6'd27 :
						myd2[26] ? 6'd26 :
						myd2[25] ? 6'd25 :
						myd2[24] ? 6'd24 :
						myd2[23] ? 6'd23 :
						myd2[22] ? 6'd22 :
						myd2[21] ? 6'd21 :
						myd2[20] ? 6'd20 :
						myd2[19] ? 6'd19 :
						myd2[18] ? 6'd18 :
						myd2[17] ? 6'd17 :
						myd2[16] ? 6'd16 :
						myd2[15] ? 6'd15 :
						myd2[14] ? 6'd14 :
						myd2[13] ? 6'd13 :
						myd2[12] ? 6'd12 :
						myd2[11] ? 6'd11 :
						myd2[10] ? 6'd10 :
						myd2[9] ? 6'd9 :
						myd2[8] ? 6'd8 :
						myd2[7] ? 6'd7 :
						myd2[6] ? 6'd6 :
						myd2[5] ? 6'd5 :
						myd2[4] ? 6'd4 :
						myd2[3] ? 6'd3 :
						myd2[2] ? 6'd2 :
						myd2[1] ? 6'd1 :
						myd2[0] ? 6'd0 : 6'd26;
	
	wire [5:0]	rshift = shift - 6'd26;
	wire [5:0]	lshift = 6'd26 - shift;//高々1シフトしかしない説ある

	wire [72:0]	myd3_r = {myd2, 23'd0} >> rshift;
	wire [25:0]	myd4_r = {myd3_r[49:25], |(myd3_r[24:0])};//右シフトver
	wire [8:0]	eyd2_r = eyd1 + {3'd0, rshift};//ゲタ+23
	//正規化数→非正規化数はあり得るので気をつける
	wire [26:0]	myd3_l = ({3'd0,lshift} + 9'd23 <eyd1) ? (myd2[26:0]) << lshift :
						 ({3'd0,lshift} + 9'd23 ==eyd1) ? myd2[26:0] << (lshift-6'd1) :
						 (eyd1 <= 9'd24) ? myd2[26:0] :
						 myd2[26:0] << (eyd1-9'd24);
	wire [25:0] myd4_l = {myd3_l[26:2], |(myd3_l[1:0])};//左シフトver
	wire [8:0]	eyd2_l = ({3'd0,lshift} + 9'd23 <eyd1) ? eyd1 - {3'd0, lshift} :
						 ({3'd0,lshift} + 9'd23 ==eyd1) ? 9'd24 :
						 (eyd1 <= 9'd24) ? eyd1 :
						  9'd24;//ゲタ+23

	wire [25:0]	myd4 = (shift>=6'd26) ? myd4_r : myd4_l;//けち1+仮数23+G1+R1
	wire [8:0]	eyd2 = (shift>=6'd26) ? eyd2_r : eyd2_l;//ゲタ+23

	//ゲタを脱ぐ
	wire [8:0]	rshift2 = (eyd2>=9'd24) ? 9'd0 : 9'd24 - eyd2;//最大24シフト(23で良さそう)
	wire [49:0]	myd5 = {myd4, 24'd0} >> rshift2;
	wire [25:0]	myd6 = {myd5[49:25], |(myd5[24:0])};//けち1+仮数23+G1+R1
	wire [8:0]	eyd3 = eyd2 + rshift2 - 9'd23;//ゲタなし

	//丸め
	wire [24:0]	myd7 = {1'd0, myd6[25:2]} + {24'd0, myd6[1] & (myd6[2] | myd6[0])};//繰り上がり1+けち1+23
	wire [8:0]	eyd4 = eyd3 + {8'd0, myd7[24]};//繰り上がりは正規化数でのみ起こる

	wire [7:0]	ey = (myd7[24]|myd7[23]) ? eyd4[7:0] : 8'd0;

	wire		nzm1 = |(x1[22:0]);
	wire		nzm2 = |(x2[22:0]);
	assign y = (x1[30:23]==8'd255 && nzm1) ? {s1, 8'd255, nzm1, x1[21:0]} ://x1=NaN
			   (x2[30:23]==8'd255 && nzm2) ? {s2, 8'd255, nzm2, x2[21:0]} ://x2=NaN
			   (x1[30:0]==31'd0 && x2[30:0]==31'd0) ? {1'd1, 8'd255, 1'd1, 22'd0} ://0/0=-nan
			   (x2[30:0]==31'd0) ? {sy, 8'd255, 23'd0} ://0割り
			   (x1[30:23]==8'd255 && x2[30:23]==8'd255) ? {1'd1, 8'd255, 1'd1, x1[21:0]} ://inf/inf
			   (x1[30:23]==8'd255) ? {sy, 8'd255, 23'd0} :
			   (x2[30:23]==8'd255) ? {sy, 31'd0} :
			   udf ? {sy, 31'd0} :
			   (eyd4>=9'd255) ? {sy, 8'd255, 23'd0} :
			   {sy, ey, myd7[22:0]};
	
	assign ovf = x1[30:23]<8'd255 && x2[30:23]<8'd255 && ((~udf && eyd4>=9'd255) || x2[30:0]==31'd0);
	assign div0 = x2[30:0]==31'd0;
endmodule

module fabs
	(input wire [31:0]	x,
	 output wire [31:0]	y);

	assign y = {1'd0, x[30:0]};
endmodule

module fneg
	(input wire [31:0]	x,
	 output wire [31:0]	y);

	assign y = {~x[31], x[30:0]};
endmodule

module floor
	(input wire [31:0]	x,
	 output wire [31:0]	y);

	//元々整数だったらそのまま出力(e>=23+127=150)
	//e<=126なら0 or -1
	//それ以外(127<=e<150)...仮数部を左シフトして小数点の位置を合わせる

	wire [7:0]	lshift = (x[30:23] - 8'd127);//最大22シフト
	wire [45:0]	myd1 = {23'd1, x[22:0]} << (lshift[4:0]);

	//小数点以下が0でないとき, 正ならそのまま, 負なら+1
	wire [23:0] myd2 = {1'd0, myd1[45:23]} + {23'd0, (x[31] & |(myd1[22:0]))};//MSBは繰り上がり分

	//シフトを元に戻す
	wire [46:0]	myd3 = {myd2[23:0], 23'd0} >> (lshift[4:0]);

	//負の場合の繰り上がり補正
	wire [7:0]	ey = x[30:23] + {7'd0, myd3[24]};
	//繰り上がりが起きた時下のbitはどうせ全部0なので, シフトし直す必要はない

	assign y = (x[30:23] == 8'd255 && |(x[22:0])) ? {x[31:23], 1'd1, x[21:0]} ://nan
			   (x[30:23] >= 8'd150) ? x :
			   (x[30:23] <= 8'd126 && (x[31] & |(x[30:0]))) ? {1'd1, 8'd127, 23'd0} ://-1
			   (x[30:23] <= 8'd126) ? {x[31], 31'd0} :
			   {x[31], ey, myd3[22:0]};
endmodule

module ftoi
	(input wire [31:0]	x,
	 output wire [31:0]	y,//-2^31 ~ 2^31-1
	 output wire		ovf,
	 output wire		nan);

	wire		sy = x[31];

	wire [23:0]	ma = (x[30:23]==8'd0) ? {1'd0, x[22:0]} : {1'd1, x[22:0]};

	//正だと思って計算して, 負ならビット反転+1

	//e=126だと繰り上がり次第
	//e<126なら0
	//e>126ならシフトして丸め
	
	//e>127+31=158ならovf

	//シフトして小数点の位置を合わせる
	wire [55:0] yd1 = (x[30:23]==8'd126) ? {32'd0, ma} ://e=126だと繰り上がり次第
					  {31'd0, ma, 1'd0} << (x[30:23] - 8'd127);
	
	//丸め(system verilog的には四捨五入で良いっぽい)
	wire [32:0] yd2 = {1'd0, yd1[55:24]} + {32'd0, yd1[23]};//MSB:繰り上がり用
	
	assign y = (x[30:23]==8'd255 && |(x[22:0])) ? 32'd0 ://NaN
			   (x[30:23]>8'd158) ? 32'd0 ://32bit以上シフトでovf
			   (x[30:23]<8'd126) ? 32'd0 ://0
			   (yd2=={2'b01, 31'd0} && sy) ? {1'b1, 31'd0} ://-2^31
			   (yd2[32] || yd2[31]) ? 32'd0 ://ovf
			   sy ? (~yd2[31:0]) + 32'd1 ://負の場合はbit反転+1
			   yd2[31:0];
	
	assign ovf = (x[30:23]==8'd255 && |(x[22:0])) ? 1'b0 ://NaN
				 (x[30:23]>8'd158) ? 1'b1 ://32bit以上シフト
				 (x[30:23]<8'd126) ? 1'b0 :
				 (yd2=={2'b01, 31'd0} && sy) ? 1'b0 ://-2^31
				 (yd2[32] || yd2[31]) ? 1'b1 :
				 1'b0;
	
	assign nan = (x[30:23]==8'd255 && |(x[22:0]));
endmodule

module itof
	(input wire [31:0]	x,//-2^31 ~ 2^31-1
	 output wire [31:0]	y);

	wire		sy = x[31];

	//xの絶対値を取る
	wire [31:0]	myd1 = x[31] ? (~x + 32'd1) : x;

	//right shift
	wire [4:0]	rshift = myd1[31] ? 5'd31 :
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
	wire [62:0]	myd2 = {myd1, 31'd0} >> rshift;

	//丸め
	wire [24:0]	myd3 = myd2[32:8] + {24'd0, (myd2[7] & (myd2[8] | (|(myd2[6:0])) ))};//繰り上がり1+けち1+仮数23

	//指数の決定と繰り上がり補正
	wire [7:0]	ey = {3'd0, rshift} + {7'd0, myd3[24]} + 8'd127;
	//繰り上がったらどうせ23'd0になるので補正しなくても変わらない

	assign y = (x==32'd0) ? 32'd0 : {sy, ey, myd3[22:0]};
endmodule

module fpu1
	(input wire [5:0]	op1,//元の命令の31-26bit
	 input wire [4:0]	fmt,//元の命令の25-21bit
	 input wire [31:0]	x1,//fs(元の命令の15-11bitに書かれているレジスタ)の値<-x1とx2の順番注意
	 input wire [31:0]	x2,//ft(元の命令の20-16bitに書かれているレジスタ)の値
	 input wire [5:0]	op2,//元の命令の5-0bit
	 output wire [31:0]	y,//返り値
	 output wire [3:0]	exception);
	//exception=0000:ok, 0--1:overflow, 0-1-:nan, 01--:div0, 1000:invalid op

	wire [31:0]	y_addsub, y_mul, y_div, y_abs, y_neg, y_floor, y_ftoi, y_itof;
	wire	ovf_addsub, ovf_mul, ovf_div, div0, ovf_ftoi, nan;

	faddsub u_addsub(x1, x2, op2[0], y_addsub, ovf_addsub);
	fmul u_mul(x1, x2, y_mul, ovf_mul);
	fdiv u_div(x1, x2, y_div, ovf_div, div0);
	fabs u_abs(x1, y_abs);
	fneg u_neg(x1, y_neg);
	floor u_floor(x1, y_floor);
	ftoi u_ftoi(x1, y_ftoi, ovf_ftoi, nan);
	itof u_itof(x2, y_itof);

	assign y = (op1==6'b010001 && fmt==5'b10000 && op2[5:1]==5'd0) ? y_addsub :
			   (op1==6'b010001 && fmt==5'b10000 && op2==6'b000010) ? y_mul :
			   (op1==6'b010001 && fmt==5'b10000 && op2==6'b000011) ? y_div :
			   (op1==6'b010001 && fmt==5'b10000 && op2==6'b000101) ? y_abs :
			   (op1==6'b010001 && fmt==5'b10000 && op2==6'b000111) ? y_neg :
			   (op1==6'b010001 && fmt==5'b10000 && op2==6'b001111) ? y_floor :
			   (op1==6'b010001 && fmt==5'b00000 && op2==6'b000000) ? y_ftoi :
			   (op1==6'b010001 && fmt==5'b00100 && op2==6'b000000) ? y_itof :
			   32'd0;

	assign exception = (op1==6'b010001 && fmt==5'b10000 && op2[5:1]==5'd0) ? {3'd0, ovf_addsub} :
					   (op1==6'b010001 && fmt==5'b10000 && op2==6'b000010) ? {3'd0, ovf_mul} :
					   (op1==6'b010001 && fmt==5'b10000 && op2==6'b000011) ? {1'b0, div0, 1'b0, ovf_div} :
					   (op1==6'b010001 && fmt==5'b10000 && op2==6'b000101) ? 4'd0 ://fabs
					   (op1==6'b010001 && fmt==5'b10000 && op2==6'b000111) ? 4'd0 ://fneg
					   (op1==6'b010001 && fmt==5'b10000 && op2==6'b001111) ? 4'd0 ://floor
					   (op1==6'b010001 && fmt==5'b00000 && op2==6'b000000) ? {2'd0, nan, ovf_ftoi} :
					   (op1==6'b010001 && fmt==5'b00100 && op2==6'b000000) ? 4'd0 :
					   4'b1000;
endmodule
`default_nettype wire
