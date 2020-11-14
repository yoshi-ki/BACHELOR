`default_nettype none

module top #(CLK_PER_HALF_BIT = 520) (
    input wire clk,
    input wire rstn,
    input wire [7:0] r_data,
    output wire [7:0] w_data,
    input wire receiver_valid,
    input wire sender_sending,
    output wire sender_ready,
    output wire [7:0] out_led,
    output wire [31:0] pcout,
    input wire [31:0] read_data,
    output wire [19:0] memory_addr,
    output wire [31:0] write_data,
    output reg [3:0] err_pc,
    output wire we);

	localparam inst_size	 = 15000;
	localparam buffer_size	 = 5000;

	// 状態変数
	// 0:フェッチ 1:デコード 2:実行 3:格納
	reg [3:0]             status;
    localparam s_idle = 0;
    localparam s_first = 1;
    localparam s_second = 2;


    reg [3:0]             err;
    
    // retを読み終わったか？
    // もし読み終わっているならもう何もしない
    reg                   inst_stop;

    // 命令コード一覧
    localparam special  	= 6'b000000;
    localparam s_add 		= 6'b100000;
    localparam s_sub        = 6'b100010;
    localparam s_mult       = 6'b011001;
    localparam s_div        = 6'b011010;
    localparam s_mod        = 6'b011011;
    localparam s_mov        = 6'b001001;
    localparam s_retl		= 6'b111111;
    localparam s_jr			= 6'b001000;
    localparam s_ret        = 6'b000000;
    localparam s_in         = 6'b101010;
    localparam s_fin		= 6'b111010;
    localparam s_out        = 6'b010101;
    localparam j			= 6'b000010;
    localparam addi     	= 6'b001000;
    localparam lw       	= 6'b100011;
    localparam ilw			= 6'b101111;
    localparam sw       	= 6'b101011;
    localparam lws			= 6'b100100;
    localparam ilws			= 6'b100111;
    localparam sws			= 6'b101100;
    localparam cop1         = 6'b010001;
    localparam f_others     = 5'b10000;
    localparam f_mfc1		= 5'b00000;
    localparam f_mtc1		= 5'b00100;
    localparam beq			= 6'b000100;
    localparam jal			= 6'b011000;
    localparam jalr			= 6'b111000;
    localparam bne 			= 6'b000101;
    localparam bl			= 6'b000001;
    localparam bg 			= 6'b000110;
    localparam fbne			= 6'b000011;
    localparam fbg			= 6'b000111;
    localparam sll 			= 6'b111111;

    // レジスタ
    reg [31:0] register_int [0:31];
    reg [31:0] register_float [0:31];

    // プログラムカウンタ
    reg [31:0] pc;

    // 命令メモリ
    reg [31:0] inst [0:inst_size-1];

    // 今読んでいる命令
    reg [31:0] now_inst;

    // *****************
    // バッファ
    // 入力データを格納する
    reg [7:0] buffer [0:buffer_size];

    // バッファの中でデータが入力されている部分
    reg [31:0] buffer_valid_idx;

    // バッファの中でコアが読み終えている部分
    reg [31:0] buffer_reading_idx;

    // 32bit分のデータは4バイト分のreadによって完了する
    // 何バイト目を読んでいるか
    reg [3:0] complete;

    //*******************
    //FPU modules

    wire ovf;
    wire [31:0] f_result;
    wire [3:0] f_exception;
    wire fequal_res;
    wire fless_res;
    wire [31:0] immediate;
    wire [31:0] minus_immediate;
    
    wire [31:0] f_argument;

    //*******************
    
    assign immediate = (now_inst[15:15] == 1'b1) ? (32'b11111111111111110000000000000000 + now_inst[15:0]) : (now_inst[15:0]);
    assign minus_immediate = (now_inst[15:15] == 1'b1) ? (32'b11111111111111110000000000000001 + now_inst[15:0]) : (now_inst[15:0] - 1);
    
    assign f_argument = (now_inst[31:26] == cop1 && now_inst[25:21] == f_mtc1) ? (register_int[now_inst[20:16]]) : (register_float[now_inst[20:16]]);
    
    fpu1 fpu11(
        now_inst[31:26],
        now_inst[25:21],
        register_float[now_inst[15:11]],
        f_argument,
        now_inst[5:0],
        f_result,
        f_exception
    );

    fequal fequall(
    	register_float[now_inst[25:21]],
    	register_float[now_inst[20:16]],
    	fequal_res
    	);

    fless flessl(
    	register_float[now_inst[20:16]],
    	register_float[now_inst[25:21]],
    	fless_res
    	);
    

   

    integer i;
    reg [1:0] writing_byte;
    reg first_send;
    
    
    assign we = (now_inst[31:26] == sw || now_inst[31:26] == sws) && (status == s_first);
    assign memory_addr = register_int[now_inst[25:21]][31:2] + immediate[31:2];
    assign write_data = (now_inst[31:26] == sw) ? register_int[now_inst[20:16]] : register_float[now_inst[20:16]];
    

    assign sender_ready = (now_inst[31:26] == special &&
                           now_inst[5:0] == s_out) || first_send;

    initial begin
        buffer_valid_idx <= 32'b0;
        buffer_reading_idx <= 32'b0;
        for(i=0;i<32;i=i+1) begin
            register_int[i] <= 32'b0;
            register_float[i] <= 32'b0;
        end
        register_int[27] <= 32'b00000000000000001000000000000000;
        inst_stop <= 1'b0;
    	status <= s_first;
    	complete <= 4'b0;
    	pc <= 32'b0;
    	$readmemb("copy.mem", inst);
    end
    
    assign out_led = pc;
    assign pcout = pc;

    reg ferr;

    assign w_data = (first_send) ? 8'b10101010 : register_int[now_inst[25:21]][7:0];
    reg reading;
    reg finished_write;

    always @(posedge clk) begin
        if (first_send && status == s_second) begin
            first_send <= 1'b0;
        end
        if (receiver_valid && !reading) begin
            buffer[buffer_valid_idx] <= r_data;
            buffer_valid_idx <= buffer_valid_idx + 1;
            reading <= 1'b1;
        end else if(!receiver_valid) begin 
        	reading <= 1'b0;
        end
        if (~rstn) begin
            finished_write <= 1'b0;
            first_send <= 1'b1;
            writing_byte <= 2'b0;
        	reading <= 1'b0;
            for(i=0;i<32;i=i+1) begin
                register_int[i] <= 32'b0;
                register_float[i] <= 32'b0;
            end
            buffer_valid_idx <= 32'b0;
            buffer_reading_idx <= 32'b0;
            register_int[27] <= 32'b00000000000000001000000000000000;
            inst_stop <= 1'b0;
            status <= s_first;
            err <= 4'b0000;
            complete <= 4'b0000;
            pc <= 0;
    	    $readmemb("copy.mem", inst);
        end else if (status == s_idle) begin

        end else if (status == s_first) begin

            if (inst_stop == 1'b0) begin
            	now_inst <= inst[pc];
            	// プログラムカウンタは常に次の命令の値を格納している
            	// そのため、相対的にジャンプするときには注意が必要
            	pc <= pc + 1;
            end else begin
                status <= s_idle;
            end

        	status <= s_second;

        end else if (status == s_second) begin

        	case (now_inst[31:26])
        		// special命令群の実行
        		special:
        			case (now_inst[5:0])
        				s_add:
        					register_int[now_inst[15:11]] <= register_int[now_inst[25:21]] + register_int[now_inst[20:16]];
        				s_sub:
                            register_int[now_inst[15:11]] <= register_int[now_inst[25:21]] - register_int[now_inst[20:16]];
                        s_mult:
                            register_int[now_inst[15:11]] <= register_int[now_inst[25:21]] * register_int[now_inst[20:16]];
                        s_div:
                        	register_int[now_inst[15:11]] <= register_int[now_inst[25:21]] / register_int[now_inst[20:16]];
                        s_mod:
                        	register_int[now_inst[15:11]] <= register_int[now_inst[25:21]] % register_int[now_inst[20:16]];
                        s_mov:
                        	register_int[now_inst[20:16]] <= register_int[now_inst[25:21]];
                        s_retl:
                        	// プログラムカウンタは次の値を保持しているため、+1の必要はない
                        	pc <= register_int[28];
                        s_jr:
                        	pc <= register_int[now_inst[25:21]];
                        s_ret:
                            inst_stop <= 1'b1;
                        s_in:
                            if (buffer_reading_idx < buffer_valid_idx && !finished_write) begin
                                if(writing_byte == 2'b00) begin
                                    register_int[now_inst[25:21]][7:0] <= buffer[buffer_reading_idx];
                                end else if(writing_byte == 2'b01) begin
                                    register_int[now_inst[25:21]][15:8] <= buffer[buffer_reading_idx];
                                end else if(writing_byte == 2'b10) begin
                                    register_int[now_inst[25:21]][23:16] <= buffer[buffer_reading_idx];
                                end else begin
                                    finished_write <= 1'b1;
                                    register_int[now_inst[25:21]][31:24] <= buffer[buffer_reading_idx];
                                end
                                writing_byte <= writing_byte + 1;
                            	buffer_reading_idx <= buffer_reading_idx + 1;
                            end
                        s_fin:
                        	if (buffer_reading_idx < buffer_valid_idx && !finished_write) begin
                        		if(writing_byte == 2'b00) begin
                                    register_float[now_inst[25:21]][7:0] <= buffer[buffer_reading_idx];
                                end else if(writing_byte == 2'b01) begin
                                    register_float[now_inst[25:21]][15:8] <= buffer[buffer_reading_idx];
                                end else if(writing_byte == 2'b10) begin
                                    register_float[now_inst[25:21]][23:16] <= buffer[buffer_reading_idx];
                                end else begin
                                    finished_write <= 1'b1;
                                    register_float[now_inst[25:21]][31:24] <= buffer[buffer_reading_idx];
                                end
                                writing_byte <= writing_byte + 1;
                                buffer_reading_idx <= buffer_reading_idx + 1;
                        	end
                        default: begin
        					if (err == 4'b0000) begin
        					   err_pc <= pc;
        					end
        					err <= 4'b0010;
        			    end
        					
        					
        			endcase
        		
                cop1:
                    if (now_inst[5:0] == s_mov) begin
                        register_float[now_inst[20:16]] <= register_float[now_inst[25:21]];
                    end else if(now_inst[25:21] == f_others) begin
                        register_float[now_inst[10:6]] <= f_result;
                    end else if(now_inst[25:21] == f_mfc1) begin
                        register_int[now_inst[20:16]] <= f_result;
                    end else if(now_inst[25:21] == f_mtc1) begin
                        register_float[now_inst[15:11]] <= f_result;
                    end
                
        		addi:
        			register_int[now_inst[20:16]] <= register_int[now_inst[25:21]] + immediate;
        		lw:
        			register_int[now_inst[20:16]] <= read_data;
        		ilw:
        			register_int[now_inst[20:16]] <= inst[register_int[now_inst[25:21]] + immediate];
        		//sw:
        			/* do nothing */
        		lws:
        			register_float[now_inst[20:16]] <= read_data;
        		ilws:
        			register_float[now_inst[20:16]] <= inst[register_int[now_inst[25:21]] + immediate];
        		//sws:
        			/* do nothing */
        		j:
        			pc <= now_inst[25:0];
        		beq:
        			if (register_int[now_inst[25:21]] == register_int[now_inst[20:16]]) begin
        				pc <= pc + minus_immediate;
        			end
        		jal: begin
        			register_int[28] <= pc;
        			pc <= now_inst[25:0];
        		end
        		jalr: begin
        			register_int[28] <= pc;
        			pc <= register_int[now_inst[25:21]];
        		end
        		bne:
        			if(register_int[now_inst[25:21]] != register_int[now_inst[20:16]]) begin
        				pc <= pc + minus_immediate;
        			end
        		
        		bl:
                    if(register_int[now_inst[25:21]][31:31] == 1'b1 && register_int[now_inst[20:16]][31:31] == 1'b1) begin
                        if(register_int[now_inst[25:21]] > register_int[now_inst[20:16]]) begin
                            pc <= pc + minus_immediate;
                        end
                    end else if (register_int[now_inst[25:21]][31:31] == 1'b0 && register_int[now_inst[20:16]][31:31] == 1'b0) begin
                        if(register_int[now_inst[25:21]] < register_int[now_inst[20:16]]) begin
                            pc <= pc + minus_immediate;
                        end
                    end else if (register_int[now_inst[25:21]][31:31] == 1'b1 && register_int[now_inst[20:16]][31:31] == 1'b0) begin
                        pc <= pc + minus_immediate;
                    end
        		bg:
        			if(register_int[now_inst[25:21]][31:31] == 1'b1 && register_int[now_inst[20:16]][31:31] == 1'b1) begin
                        if(register_int[now_inst[25:21]] < register_int[now_inst[20:16]]) begin
                            pc <= pc + minus_immediate;
                        end
                    end else if (register_int[now_inst[25:21]][31:31] == 1'b0 && register_int[now_inst[20:16]][31:31] == 1'b0) begin
                        if(register_int[now_inst[25:21]] > register_int[now_inst[20:16]]) begin
                            pc <= pc + minus_immediate;
                        end
                    end else if (register_int[now_inst[25:21]][31:31] == 1'b0 && register_int[now_inst[20:16]][31:31] == 1'b1) begin
                        pc <= pc + minus_immediate;
                    end
        		fbne:
        			if(!fequal_res) begin
        				pc <= pc + minus_immediate;
        			end
        		fbg:
        			if(fless_res) begin
        				pc <= pc + minus_immediate;
        			end
        		sll:
        			register_int[now_inst[15:11]] <= register_int[now_inst[20:16]] << register_int[now_inst[10:6]];
        		
        		default:
        		    if (now_inst[31:26] != sw) begin
        			     err <= 4'b0011;
        			end
        	endcase
        	// if (now_inst == (looking instruction) && !(break condition))
        	if ((now_inst[31:26] == lw || now_inst[31:26] == lws) && complete != 4'b0010) begin
        	   complete <= complete + 1;
        	end else if (now_inst[31:26] == special && now_inst[5:0] == s_in && !finished_write) begin
               complete <= complete + 1;
            end else if (now_inst[31:26] == special && now_inst[5:0] == s_fin && !finished_write) begin
               complete <= complete + 1;
            end else if (now_inst[31:26] == special && now_inst[5:0] == s_out && sender_sending) begin
               complete <= complete + 1;
            end else begin
               finished_write <= 1'b0;
        	   complete <= 4'b0000;
        	   status <= s_first;
        	end
        	   
        end else begin
        	err <= 1;
        end
    end
   
endmodule
`default_nettype wire