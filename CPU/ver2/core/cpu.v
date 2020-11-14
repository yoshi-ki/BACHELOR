`default_nettype none

module top #(CLK_PER_HALF_BIT = 675) (
    input wire clk,
    input wire rstn,
    
    // UART通信の入力データ
    input wire [7:0] r_data,

    // UART通信の出力データ
    output wire [7:0] w_data,

    // UART入力をしてもいいですか？
    input wire receiver_valid,

    // UART出力中です
    input wire sender_sending,

    // UART出力する準備が整いました
    output wire sender_ready,

    // デバッグ用のLED出力
    output wire [7:0] out_led,

    // メモリで読み出したデータ
    input wire [31:0] read_data,

    // メモリ読み込み・書き込みに用いるアドレス
    output wire [18:0] memory_addr,

    // メモリに書き込むデータ
    output wire [31:0] write_data,
    output reg [3:0] err_pc,
    output wire we);

    localparam inst_size     = 11700;
    localparam buffer_size   = 2000;

    reg [3:0]             err;

    // 命令コード一覧
    localparam special      = 6'b000000;
    localparam s_add        = 6'b100000;
    localparam s_sub        = 6'b100010;
    localparam s_mult       = 6'b011001;
    localparam s_div        = 6'b011010;
    localparam s_mod        = 6'b011011;
    localparam s_mov        = 6'b001001;
    localparam s_retl       = 6'b111111;
    localparam s_jr         = 6'b001000;
    localparam s_ret        = 6'b000000;
    localparam s_in         = 6'b101010;
    localparam s_fin        = 6'b111010;
    localparam s_out        = 6'b010101;
    localparam j            = 6'b000010;
    localparam addi         = 6'b001000;
    localparam lw           = 6'b100011;
    localparam ilw          = 6'b101111;
    localparam sw           = 6'b101011;
    localparam lws          = 6'b100100;
    localparam ilws         = 6'b100111;
    localparam sws          = 6'b101100;
    localparam cop1         = 6'b010001;
    localparam f_others     = 5'b10000;
    localparam f_mfc1       = 5'b00000;
    localparam f_mtc1       = 5'b00100;
    localparam beq          = 6'b000100;
    localparam jal          = 6'b011000;
    localparam jalr         = 6'b111000;
    localparam bne          = 6'b000101;
    localparam bl           = 6'b000001;
    localparam bg           = 6'b000110;
    localparam fbne         = 6'b000011;
    localparam fbg          = 6'b000111;
    localparam fbge         = 6'b001110;
    localparam sll          = 6'b111111;
    localparam slli         = 6'b111110;
    localparam ble          = 6'b001011;
    localparam bge          = 6'b001001;


    // レジスタ
    reg [31:0] register_int [0:31];
    reg [31:0] register_float [0:31];

    // プログラムカウンタ
    reg [31:0] pc;

    // 命令メモリ
    reg [31:0] inst [0:inst_size-1];

    // *****************
    // バッファ
    // 入力データを格納する
    reg [7:0] buffer [0:buffer_size];

    // バッファの中でデータが入力されている部分
    reg [31:0] buffer_valid_idx;

    // バッファの中でコアが読み終えている部分
    reg [31:0] buffer_reading_idx;
    reg [31:0] prop_reading_idx [0:5];

    // 6クロック命令のためにパイプラインがストールするための時間
    reg [2:0] waiting;

    // 分岐予測を何段しているか？

    integer i;

    // 32bit分のデータは4バイト分のreadによって完了する
    // 何バイト目を読んでいるか
    reg [1:0] writing_byte;

    // 最初に送るバイトを送り終えたなら0
    reg first_send;
   
    // RSレジスタ
    reg [31:0] argument1 [0:5];
    // RTレジスタ
    reg [31:0] argument2 [0:5];
    // 分岐用レジスタ
    reg [31:0] argument3 [0:5];

    reg [31:0] iteration;

    // 演算結果
    reg [31:0] result [0:5];
    // 終了処理
    reg inst_stop;
    reg sw_waiting;

    // 伝搬する命令
    reg [31:0] instr_reg [0:5];

    // 伝搬するプログラムカウンタ
    reg [31:0] prop_pc [0:5];

    // 伝搬する実行命令数
    reg [31:0] prop_iteration [0:5];

    // 伝搬する分岐命令フラグ
    reg [5:0] jump;

    // レジスタの値がいま計算中であるかどうかを保持するフラグ
    reg [31:0] int_data_flag;
    reg [31:0] float_data_flag;

    // 伝搬する命令有効フラグ
    reg [5:0] validate_flag;

    
    wire [31:0] immediate;
    wire [31:0] minus_immediate;

    // OUT命令用のフラグ
    reg output_flag;

    // OUT命令で出力する中身
    reg [31:0] output_content;

    // ストアフェーズの命令がどこに書こうとしているか
    wire [31:0] want_to_write;
    
    
    // 即値として何を用いるか
    assign immediate = (instr_reg[0][15:15] == 1'b1) ? (32'b11111111111111110000000000000000 + instr_reg[0][15:0]) : (instr_reg[0][15:0]);
    assign minus_immediate = (instr_reg[0][15:15] == 1'b1) ? (32'b11111111111111110000000000000001 + instr_reg[0][15:0]) : (instr_reg[0][15:0] - 1);
    
    /*
    assign want_to_write = (validate_flag[1]) ? 
                           ()
    */
    
    // *******************
    // FPU modules

    wire ovf;
    wire [31:0] f_result;
    wire [3:0] f_exception;
    wire fequal_res;
    wire fless_res;


    wire [31:0] f_argument;

    
    // FPUに渡す引数
    assign f_argument = (instr_reg[1][31:26] == cop1 && instr_reg[1][25:21] == f_mtc1) ? (register_int[instr_reg[1][20:16]]) : (register_float[instr_reg[1][20:16]]);
    
    // メインFPU
    fpu1 fpu11(
        instr_reg[1][31:26],
        instr_reg[1][25:21],
        argument2[1],
        argument1[1],
        instr_reg[1][5:0],
        f_result,
        f_exception,
        clk,
        rstn
    );

    // fequal(fbne用)
    fequal fequall(
        argument1[1],
        argument2[1],
        fequal_res
    );

    // fless(fbg用)
    fless flessl(
        argument2[1],
        argument1[1],
        fless_res
    );

    
    
    // ********************
    
    reg reading;

    

     // write-enable
    assign we = (instr_reg[0][31:26] == sw || instr_reg[0][31:26] == sws) && validate_flag[0];
    
    // 読み出し・書き出しに使うメモリアドレス
    assign memory_addr = register_int[instr_reg[0][25:21]][31:2] + immediate[31:2];
    
    // メモリ書き込みに用いるデータ
    assign write_data = (instr_reg[0][31:26] == sw) ? register_int[instr_reg[0][20:16]] : register_float[instr_reg[0][20:16]];
    
    // UART出力用のフラグ　これが立っていたら通信を開始
    assign sender_ready = (instr_reg[2][31:26] == special && instr_reg[2][5:0] == s_out && validate_flag[2]) || first_send;

    initial begin
        // 各種初期化
        inst_stop <= 1'b0;
        iteration <= 32'b0;
        first_send <= 1'b1;
        buffer_valid_idx <= 32'b0;
        buffer_reading_idx <= 32'b0; 
        reading <= 1'b0;
        for(i=0;i<32;i=i+1) begin
            register_int[i] <= 32'b0;
            register_float[i] <= 32'b0;
            int_data_flag[i] <= 1'b0;
            float_data_flag[i] <= 1'b0;
        end
        for(i=0;i<6;i=i+1) begin
            jump[i] <= 1'b0;
            result[i] <= 32'b0;
            argument1[i] <= 32'b0;
            argument2[i] <= 32'b0;
            argument3[i] <= 32'b0;
            prop_pc[i] <= 32'b0;
            prop_iteration[i] <= 32'b0;
            prop_reading_idx[i] <= 32'b0;
            validate_flag[i] <= 1'b0;
        end
        for(i=0;i<500;i=i+1) begin
            buffer[i] <= 8'b0;
        end
        waiting <= 2;
        pc <= 32'b0;
        $readmemb("copy.mem", inst);
    end
    
    // LEDに表示したいものをここでassignする
    assign out_led = buffer_valid_idx[7:0];

    reg ferr;

    // 最初に送るのは決まったバイト、そうでなければ指定されたバイト
    assign w_data = (first_send) ? 8'b10101010 : output_content[7:0];

    // 一つのデータを連続して読まないように立てるフラグ
    // 読むのを開始した瞬間に立てて、データが来なくなったら下ろす
    

    // in命令で4バイト分の入力が終わっているか？
    reg finished_write;

    reg stallflag;

    reg out;

    reg want_validate;
    reg [5:0] want_register;
    reg int_or_float;
    
    reg [2:0] want_argument;

    

    always @(posedge clk) begin
    
        want_validate = 1'b0;
        want_register = 5'b0;
        int_or_float = 1'b0;

        /*
        if (validate_flag[1]) begin
            case (instr_reg[1][31:26])
                special:
                    case (instr_reg[1][5:0])
                        s_add, s_sub, s_mult: begin
                            want_validate = 1'b1;
                            want_register = instr_reg[1][15:11];
                            int_or_float = 1'b0;
                        end
                        s_mov: begin
                            want_validate = 1'b1;
                            want_register = instr_reg[1][20:16];
                            int_or_float = 1'b0;
                        end
                        s_in: begin
                            want_validate = 1'b1;
                            want_register = instr_reg[1][25:21];
                            int_or_float = 1'b0;
                        end
                        s_fin: begin
                            want_validate = 1'b1;
                            want_register = instr_reg[1][25:21];
                            int_or_float = 1'b1;
                        end
                    endcase // inst1[31:26]
                cop1: begin
                    if(instr_reg[1][5:0] == s_mov) begin
                        want_validate = 1'b1;
                        want_register = instr_reg[1][20:16];
                        int_or_float = 1'b1;
                    end
                end
                sll: begin
                    want_validate = 1'b1;
                    want_register = instr_reg[1][15:11];
                    int_or_float = 1'b0;
                end
                slli, ilw, addi: begin
                    want_validate = 1'b1;
                    want_register = instr_reg[1][20:16];
                    int_or_float = 1'b0;
                end
                ilws: begin
                    want_validate = 1'b1;
                    want_register = instr_reg[1][20:16];
                    int_or_float = 1'b1;
                end
            endcase // inst1[31:26]
    
        end
        */
        
        // 一番最初に0xaaを送信するための処理
        // 今考えるとコンパイラに頼んだほうが圧倒的に楽だったと思う
        if (first_send && ~sender_sending) begin
            first_send <= 1'b0;
        end
        
        // データ入力のバッファ書き込み
        if (receiver_valid && !reading) begin
            buffer[buffer_valid_idx] <= r_data;
            buffer_valid_idx <= buffer_valid_idx + 1;
            reading <= 1'b1;
        end else if(!receiver_valid) begin 
            reading <= 1'b0;
        end
        
        if (~rstn) begin
            reading <= 1'b0;
            inst_stop <= 1'b0;
            iteration <= 32'b0;
            first_send <= 1'b1;
            buffer_valid_idx <= 32'b0;
            buffer_reading_idx <= 32'b0;
            sw_waiting <= 1'b0;
            for(i=0;i<32;i=i+1) begin
                register_int[i] <= 32'b0;
                register_float[i] <= 32'b0;
                int_data_flag[i] <= 1'b0;
                float_data_flag[i] <= 1'b0;
            end
            for(i=0;i<5;i=i+1) begin
                jump[i] <= 1'b0;
                instr_reg[i] <= 32'b0;
                result[i] <= 32'b0;
                argument1[i] <= 32'b0;
                argument2[i] <= 32'b0;
                argument3[i] <= 32'b0;
                prop_pc[i] <= 32'b0;
                prop_iteration[i] <= 32'b0;
                prop_reading_idx[i] <= 32'b0;
                validate_flag[i] <= 1'b0;
            end
            for(i=0;i<500;i=i+1) begin
                buffer[i] <= 8'b0;
            end
            waiting <= 2;
            pc <= 32'b0;
            $readmemb("copy.mem", inst);
        end else if (~inst_stop) begin
            // パイプライン実装

            // ********************
            // フェッチフェーズ
            // ********************
            if (waiting == 3'b0) begin 

                instr_reg[0] <= inst[pc];
                prop_pc[0] <= pc;
                prop_iteration[0] <= iteration;
                prop_reading_idx[0] <= buffer_reading_idx;
                validate_flag[0] <= 1'b1;
                jump[0] <= 1'b0;

                // 分岐予測
                // 常にジャンプするように予測
                case (inst[pc][31:26])
                    special:
                        case (inst[pc][5:0])
                            s_jr: begin
                                if (int_data_flag[inst[pc][25:21]]) begin
                                    // Read After Writeハザードが発生
                                    // パイプラインの伝搬を１つ遅らせる
                                    validate_flag[0] <= 1'b0;
                                    iteration <= iteration;
                                    pc <= pc;
                                end else begin
                                    iteration <= iteration + 1;
                                    pc <= register_int[inst[pc][25:21]];
                                end
                            end
                            s_retl: begin
                                if (int_data_flag[28]) begin
                                    validate_flag[0] <= 1'b0;
                                    iteration <= iteration;
                                    pc <= pc;
                                end else begin
                                    pc <= register_int[28] + 1;
                                    iteration <= iteration + 1;
                                end
                            end
                            s_out: begin
                                pc <= pc + 1;
                                iteration <= iteration + 1;
                                waiting <= waiting + 1;
                            end
                            default: begin
                                pc <= pc + 1;
                                iteration <= iteration + 1;
                            end
                        endcase // inst[pc][5:0]
                    cop1: begin
                        // 6クロック命令の実行
                        // 待機カウンタをインクリメント
                        pc <= pc + 1;
                        iteration <= iteration + 1;
                        waiting <= waiting + 3;
                    end
                    j, jal: begin
                        pc <= {6'b0, inst[pc][25:0]};
                        iteration <= iteration + 1;
                    end
                    jalr: begin
                        if (int_data_flag[inst[pc][25:21]]) begin
                            validate_flag[0] <= 1'b0;
                            pc <= pc;
                            iteration <= iteration;
                        end else begin
                            pc <= register_int[inst[pc][25:21]];
                            iteration <= iteration + 1;
                        end
                    end
                    beq, bne, bl, ble, bg, bge, fbg, fbge, fbne: begin
                        jump[0] <= 1'b1;
                        iteration <= iteration + 1;
                        pc <= pc + {{16{inst[pc][15]}}, inst[pc][15:0]};
                    end
                    sw: begin
                        if (int_data_flag[inst[pc][20:16]] || 
                            int_data_flag[inst[pc][25:21]] || 
                            (validate_flag[1] && jump[1]) ||
                            (validate_flag[2] && jump[2]) || 
                            validate_flag[0]) begin

                            sw_waiting <= 1'b1;
                            validate_flag[0] <= 1'b0;
                            pc <= pc;
                            iteration <= iteration;
                        end else begin
                            sw_waiting <= 1'b0;
                            iteration <= iteration + 1;
                            pc <= pc + 1;
                        end
                    end
                    sws: begin
                        if (float_data_flag[inst[pc][20:16]] || 
                            int_data_flag[inst[pc][25:21]] || 
                            (validate_flag[1] && jump[1]) ||
                            (validate_flag[2] && jump[2]) || 
                            validate_flag[0]) begin

                            sw_waiting <= 1'b1;
                            sw_waiting <= 1'b1;
                            validate_flag[0] <= 1'b0;
                            
                            pc <= pc;
                            iteration <= iteration;
                        end else begin
                            sw_waiting <= 1'b0;
                            iteration <= iteration + 1;
                            pc <= pc + 1;
                        end 
                    end
                    // フォワーディングしないならここはコメントアウトしても動くことを確認済み
                    /*
                    lw, lws: begin
                        if (validate_flag[0] || validate_flag[1]) begin
                            pc <= pc;
                            iteration <= iteration;
                            validate_flag[0] <= 1'b0;
                        end else begin
                            iteration <= iteration + 1;
                            pc <= pc + 1;
                        end
                    end
                    */
                    default: begin
                        iteration <= iteration + 1;
                        pc <= pc + 1;
                    end
                endcase // inst[pc][5:0]
            end else begin
                waiting <= waiting - 1;

                validate_flag[0] <= 1'b0;
            end

            // ********************
            // デコードフェーズ
            // ********************

            stallflag = 0;

            want_argument = 0;

            if (validate_flag[0]) begin
                case (instr_reg[0][31:26])
                    special:
                        case (instr_reg[0][5:0])
                            s_add, s_sub, s_mult: begin
                                argument1[1] <= register_int[instr_reg[0][25:21]];
                                argument2[1] <= register_int[instr_reg[0][20:16]];
                                stallflag = int_data_flag[instr_reg[0][25:21]] | int_data_flag[instr_reg[0][20:16]];
                                if(stallflag && want_register == instr_reg[0][25:21] && int_or_float == 1'b0 && !int_data_flag[instr_reg[0][20:16]]) begin
                                    stallflag = 1'b0;
                                    want_argument = 1;
                                end else if(stallflag && want_register == instr_reg[0][20:16] && int_or_float == 1'b0 && !int_data_flag[instr_reg[0][25:21]]) begin
                                    stallflag = 1'b0;
                                    want_argument = 2;
                                end
                                if (~stallflag) begin
                                    int_data_flag[instr_reg[0][15:11]] <= 1'b1;
                                end
                            end
                            s_mov: begin
                                argument1[1] <= register_int[instr_reg[0][25:21]];
                                stallflag = (int_data_flag[instr_reg[0][25:21]]);
                                if(stallflag && want_register == instr_reg[0][25:21] && int_or_float == 1'b0) begin
                                    stallflag = 1'b0;
                                    want_argument = 1;
                                end
                                if (~stallflag) begin
                                    int_data_flag[instr_reg[0][20:16]] <= 1'b1;
                                end
                            end
                            s_jr: begin
                                if (int_data_flag[instr_reg[0][25:21]]) begin
                                    validate_flag[0] <= 1'b0;
                                    validate_flag[1] <= 1'b0;
                                    iteration <= prop_iteration[0];
                                    pc <= prop_pc[0];
                                    buffer_reading_idx <= prop_reading_idx[0];
                                end 
                            end
                            s_retl: begin
                                if (int_data_flag[28]) begin
                                    validate_flag[0] <= 1'b0;
                                    validate_flag[1] <= 1'b0;
                                    iteration <= prop_iteration[0];
                                    pc <= prop_pc[0];
                                    buffer_reading_idx <= prop_reading_idx[0];
                                end 
                            end
                            s_out: begin
                                argument1[1] <= register_int[instr_reg[0][25:21]];
                                stallflag = int_data_flag[instr_reg[0][25:21]] | 
                                            sender_sending | 
                                            (instr_reg[1][5:0] == s_out && validate_flag[1]) |
                                            (instr_reg[2][5:0] == s_out && validate_flag[2]);
                                if (stallflag && (want_register == instr_reg[0][25:21]) && 
                                    !sender_sending && 
                                    !(instr_reg[1][5:0] == s_out && validate_flag[1]) && 
                                    !(instr_reg[2][5:0] == s_out && validate_flag[2]) && 
                                    int_or_float == 1'b0) begin
                                    stallflag = 1'b0;
                                    want_argument = 1;
                                end
                            end
                            s_in: begin
                                argument1[1] <= {buffer[buffer_reading_idx+3], 
                                                buffer[buffer_reading_idx+2],
                                                buffer[buffer_reading_idx+1],
                                                buffer[buffer_reading_idx]};
                                stallflag = (buffer_reading_idx + 3 > buffer_valid_idx) | 
                                            (buffer_reading_idx + 3 == buffer_valid_idx) |
                                            (jump[1] && validate_flag[1]) |
                                            (jump[2] && validate_flag[2]);
                                if (~stallflag) begin
                                    buffer_reading_idx <= buffer_reading_idx + 4;
                                    int_data_flag[instr_reg[0][25:21]] <= 1'b1;
                                end
                            end
                            s_fin: begin
                                argument1[1] <= {buffer[buffer_reading_idx+3], 
                                                buffer[buffer_reading_idx+2],
                                                buffer[buffer_reading_idx+1],
                                                buffer[buffer_reading_idx]};
                                stallflag = (buffer_reading_idx + 3 > buffer_valid_idx) | 
                                            (buffer_reading_idx + 3 == buffer_valid_idx) |
                                            (jump[1] && validate_flag[1]) |
                                            (jump[2] && validate_flag[2]);
                                if (~stallflag) begin
                                    buffer_reading_idx <= buffer_reading_idx + 4;
                                    float_data_flag[instr_reg[0][25:21]] <= 1'b1;
                                end
                            end
                            //s_in:
                            //s_fin:
                        endcase // instr_reg[0][5:0]
                    sw: begin
                        if (int_data_flag[instr_reg[0][20:16]] || int_data_flag[instr_reg[0][25:21]]) begin
                            validate_flag[0] <= 1'b0;
                            validate_flag[1] <= 1'b0;
                            iteration <= prop_iteration[0];
                            pc <= prop_pc[0];
                            buffer_reading_idx <= prop_reading_idx[0];
                        end
                    end
                    sws: begin
                        if (float_data_flag[instr_reg[0][20:16]] || int_data_flag[instr_reg[0][25:21]]) begin
                            validate_flag[0] <= 1'b0;
                            validate_flag[1] <= 1'b0;
                            iteration <= prop_iteration[0];
                            pc <= prop_pc[0];
                            buffer_reading_idx <= prop_reading_idx[0];
                        end 
                    end
                    cop1: begin
                        if (instr_reg[0][5:0] == s_mov) begin
                            // mov.s
                            argument1[1] <= register_float[instr_reg[0][25:21]];
                            stallflag = float_data_flag[instr_reg[0][25:21]];
                            if(stallflag && want_register == instr_reg[0][25:21] && int_or_float == 1'b1) begin
                                stallflag = 1'b0;
                                want_argument = 1;
                            end

                            if (~stallflag) begin
                                float_data_flag[instr_reg[0][20:16]] <= 1'b1;
                            end

                        end else if (instr_reg[0][25:21] == f_mtc1) begin
                            // f_mtc1
                            argument1[1] <= register_int[instr_reg[0][20:16]];
                            argument2[1] <= register_float[instr_reg[0][15:11]];
                            stallflag = int_data_flag[instr_reg[0][20:16]];
                            if(stallflag && want_register == instr_reg[0][20:16] && int_or_float == 1'b0) begin
                                stallflag = 1'b0;
                                want_argument = 1;
                            end
                            if (~stallflag) begin
                                float_data_flag[instr_reg[0][15:11]] <= 1'b1;
                            end

                        end else if (instr_reg[0][25:21] == f_mfc1) begin
                            argument1[1] <= register_int[instr_reg[0][20:16]];
                            argument2[1] <= register_float[instr_reg[0][15:11]];
                            stallflag = float_data_flag[instr_reg[0][15:11]];
                            if(stallflag && want_register == instr_reg[0][15:11] && int_or_float == 1'b1) begin
                                stallflag = 1'b0;
                                want_argument = 2;
                            end
                            if (~stallflag) begin
                                int_data_flag[instr_reg[0][20:16]] <= 1'b1;
                            end

                        end else if (instr_reg[0][25:21] == f_others) begin
                            argument1[1] <= register_float[instr_reg[0][20:16]];
                            argument2[1] <= register_float[instr_reg[0][15:11]];
                            // 本当は命令によって使うレジスタの場所は違うけどこれでも動きはするのでサボっている
                            stallflag = float_data_flag[instr_reg[0][20:16]] | float_data_flag[instr_reg[0][15:11]];

                            if(stallflag && want_register == instr_reg[0][20:16] && int_or_float == 1'b1 && !float_data_flag[instr_reg[0][15:11]]) begin
                                stallflag = 1'b0;
                                want_argument = 1;
                            end else if(stallflag && want_register == instr_reg[0][15:11] && int_or_float == 1'b1 && !float_data_flag[instr_reg[0][20:16]]) begin
                                stallflag = 1'b0;
                                want_argument = 2;
                            end

                            if (~stallflag) begin
                                float_data_flag[instr_reg[0][10:6]] <= 1'b1;
                            end
                        end
                    end
                    lw: begin
                        stallflag = int_data_flag[instr_reg[0][25:21]];
                        if (~stallflag) begin

                            int_data_flag[instr_reg[0][20:16]] <= 1'b1;
                        end
                    end
                    lws: begin
                        stallflag = int_data_flag[instr_reg[0][25:21]];
                        if (~stallflag) begin

                            float_data_flag[instr_reg[0][20:16]] <= 1'b1;
                        end
                    end
                    ilw: begin
                        argument1[1] <= inst[register_int[instr_reg[0][25:21]] + immediate];
                        stallflag = int_data_flag[instr_reg[0][25:21]];
                        if (~stallflag) begin

                            int_data_flag[instr_reg[0][20:16]] <= 1'b1;
                        end
                    end
                    ilws: begin
                        argument1[1] <= inst[register_int[instr_reg[0][25:21]] + immediate];
                        stallflag = int_data_flag[instr_reg[0][25:21]];
                        if (~stallflag) begin

                            float_data_flag[instr_reg[0][20:16]] <= 1'b1;
                        end
                    end
                    addi: begin
                        argument1[1] <= register_int[instr_reg[0][25:21]];
                        argument2[1] <= {{16{instr_reg[0][15]}}, instr_reg[0][15:0]};
                        stallflag = int_data_flag[instr_reg[0][25:21]];
                        if(stallflag && want_register == instr_reg[0][25:21] && int_or_float == 1'b0) begin
                            stallflag = 1'b0;
                            want_argument = 1;
                        end
                        if (~stallflag) begin
                            int_data_flag[instr_reg[0][20:16]] <= 1'b1;
                        end
                    end
                    sll: begin
                        argument1[1] <= register_int[instr_reg[0][20:16]];
                        argument2[1] <= register_int[instr_reg[0][10:6]];
                        stallflag = int_data_flag[instr_reg[0][20:16]] | int_data_flag[instr_reg[0][10:6]];

                        if(stallflag && want_register == instr_reg[0][20:16] && int_or_float == 1'b0 && !int_data_flag[instr_reg[0][10:6]]) begin
                            stallflag = 1'b0;
                            want_argument = 1;
                        end else if(stallflag && want_register == instr_reg[0][10:6] && int_or_float == 1'b0 && !int_data_flag[instr_reg[0][20:16]]) begin
                            stallflag = 1'b0;
                            want_argument = 2;
                        end

                        if (~stallflag) begin
                            int_data_flag[instr_reg[0][15:11]] <= 1'b1;
                        end 
                    end
                    slli: begin
                        argument1[1] <= register_int[instr_reg[0][25:21]];
                        argument2[1] <= {{16{instr_reg[0][15]}}, instr_reg[0][15:0]};
                        stallflag = int_data_flag[instr_reg[0][25:21]];

                        if(stallflag && want_register == instr_reg[0][25:21] && int_or_float == 1'b0) begin
                            stallflag = 1'b0;
                            want_argument = 1;
                        end

                        if (~stallflag) begin
                            int_data_flag[instr_reg[0][20:16]] <= 1'b1;
                        end
                    end
                    j: begin
                        stallflag = int_data_flag[instr_reg[0][25:21]];
                    end
                    jal: begin
                        int_data_flag[28] <= 1'b1;
                    end
                    jalr: begin
                        if (int_data_flag[instr_reg[0][25:21]]) begin
                            // さっきした分岐は失敗だった
                            validate_flag[0] <= 1'b0;
                            validate_flag[1] <= 1'b0;
                            iteration <= prop_iteration[0];
                            pc <= prop_pc[0];
                            buffer_reading_idx <= prop_reading_idx[0];
                        end else begin
                            int_data_flag[28] <= 1'b1;
                        end
                    end
                    beq, bne, bl, ble, bg, bge: begin
                        argument1[1] <= register_int[instr_reg[0][25:21]];
                        argument2[1] <= register_int[instr_reg[0][20:16]];
                        stallflag = int_data_flag[instr_reg[0][25:21]] | int_data_flag[instr_reg[0][20:16]];

                        if(stallflag && want_register == instr_reg[0][25:21] && int_or_float == 1'b0 && !int_data_flag[instr_reg[0][20:16]]) begin
                            stallflag = 1'b0;
                            want_argument = 1;
                        end else if(stallflag && want_register == instr_reg[0][20:16] && int_or_float == 1'b0 && !int_data_flag[instr_reg[0][25:21]]) begin
                            stallflag = 1'b0;
                            want_argument = 2;
                        end

                    end
                    fbne, fbg, fbge: begin
                        argument1[1] <= register_float[instr_reg[0][25:21]];
                        argument2[1] <= register_float[instr_reg[0][20:16]];
                        stallflag = float_data_flag[instr_reg[0][25:21]] | float_data_flag[instr_reg[0][20:16]];

                        if (stallflag && want_register == instr_reg[0][25:21] && int_or_float == 1'b1 && !float_data_flag[instr_reg[0][20:16]]) begin
                            stallflag = 1'b0;
                            want_argument = 1;
                        end else if (stallflag && want_register == instr_reg[0][20:16] && int_or_float == 1'b1 && !float_data_flag[instr_reg[0][25:21]]) begin
                            stallflag = 1'b0;
                            want_argument = 2;
                        end
                    end
                endcase // now_inst[31:26]
            end

            // 全命令共通の伝搬処理
            instr_reg[1] <= instr_reg[0];
            prop_pc[1] <= prop_pc[0];
            prop_iteration[1] <= prop_iteration[0];
            prop_reading_idx[1] <= prop_reading_idx[0];
            validate_flag[1] <= validate_flag[0];
            jump[1] <= jump[0];

            if (stallflag && validate_flag[0]) begin
                // Read After Writeハザードが発生する
                // パイプラインの伝搬を一つ遅らせる
                validate_flag[1] <= 1'b0;
                instr_reg[0] <= instr_reg[0];
                prop_pc[0] <= prop_pc[0];
                jump[0] <= jump[0];
                prop_iteration[0] <= prop_iteration[0];
                prop_reading_idx[0] <= prop_reading_idx[0];
                validate_flag[0] <= validate_flag[0];
                pc <= pc;
                waiting <= waiting;
                iteration <= iteration;
            end

            // ********************
            // 実行フェーズその1
            // ********************


            out = 1'b0;
            if (validate_flag[1]) begin
                case (instr_reg[1][31:26])
                    special:
                        case (instr_reg[1][5:0])
                            s_add: begin
                                if(want_argument == 1) begin
                                    argument1[1] <= argument1[1] + argument2[1];
                                end else if(want_argument == 2) begin
                                    argument2[1] <= argument1[1] + argument2[1];
                                end
                                result[2] <= argument1[1] + argument2[1];
                            end
                            s_sub: begin
                                if(want_argument == 1) begin
                                    argument1[1] <= argument1[1] - argument2[1];
                                end else if(want_argument == 2) begin
                                    argument2[1] <= argument1[1] - argument2[1];
                                end
                                result[2] <= argument1[1] - argument2[1];
                            end
                            s_mult: begin
                                if(want_argument == 1) begin
                                    argument1[1] <= argument1[1] * argument2[1];
                                end else if(want_argument == 2) begin
                                    argument2[1] <= argument1[1] * argument2[1];
                                end
                                result[2] <= argument1[1] * argument2[1];
                            end
                            /*
                            s_div:
                                result[2] <= argument1[1] / argument2[1];
                            */
                            s_mov: begin
                                if (want_argument == 1) begin
                                    argument1[1] <= argument1[1];
                                end else if (want_argument == 2) begin
                                    argument2[1] <= argument1[1];
                                end
                                result[2] <= argument1[1];
                            end
                            s_out: begin
                                result[2] <= argument1[1];
                                output_content = argument1[1];
                            end
                            s_in, s_fin: begin
                                if (want_argument == 1) begin
                                    argument1[1] <= argument1[1];
                                end else if (want_argument == 2) begin
                                    argument2[1] <= argument1[1];
                                end 
                                result[2] <= argument1[1];
                            end
                        endcase // instr_reg[1][5:0]
                    cop1: begin
                        if (instr_reg[1][5:0] == s_mov) begin
                            if (want_argument == 1) begin
                                argument1[1] <= argument1[1];
                            end else if (want_argument == 2) begin
                                argument2[1] <= argument1[1];
                            end
                            result[2] <= argument1[1];
                        end
                    end
                    sll, slli: begin
                    	if(argument2[1][31] == 1'b1) begin
                    		// 負の数のシフト
                            if (want_argument == 1) begin
                                argument1[1] <= argument1[1] >> (32'b0 - argument2[1]);
                            end else if (want_argument == 2) begin
                                argument2[1] <= argument1[1] >> (32'b0 - argument2[1]);
                            end
                    		result[2] <= argument1[1] >> (32'b0 - argument2[1]);
                    	end else begin
                            if (want_argument == 1) begin
                                argument1[1] <= argument1[1] << argument2[1];
                            end else if (want_argument == 2) begin
                                argument2[1] <= argument1[1] << argument2[1];
                            end
                    		result[2] <= argument1[1] << argument2[1];
                    	end
                    end
                    ilw, ilws: begin
                        if (want_argument == 1) begin
                            argument1[1] <= argument1[1];
                        end else if (want_argument == 2) begin
                            argument2[1] <= argument1[1];
                        end
                        argument1[2] <= argument1[1];
                    end
                    addi: begin
                        if (want_argument == 1) begin
                            argument1[1] <= argument1[1] + argument2[1];
                        end else if (want_argument == 2) begin
                            argument2[1] <= argument1[1] + argument2[1];
                        end
                        result[2] <= argument1[1] + argument2[1];
                    end
                    jal, jalr: begin
                        result[2] <= prop_pc[1];
                    end


                    beq: begin
                        if (argument1[1] != argument2[1]) begin
                            out = 1'b1;
                        end
                    end

                    bne: begin
                        if (argument1[1] == argument2[1]) begin
                            out = 1'b1;
                        end
                    end

                    bl: begin
                        if (argument1[1][31:31] == 1'b0 && argument2[1][31:31] == 1'b0) begin
                            if (argument1[1] >= argument2[1]) begin
                                out = 1'b1;
                            end
                        end else if (argument1[1][31:31] == 1'b1 && argument2[1][31:31] == 1'b1) begin
                            if (argument1[1] <= argument2[1]) begin
                                out = 1'b1;
                            end
                        end else if (argument1[1][31:31] == 1'b0 && argument2[1][31:31] == 1'b1) begin
                            out = 1'b1;
                        end
                    end

                    ble: begin
                        if (argument1[1][31:31] == 1'b0 && argument2[1][31:31] == 1'b0) begin
                            if (argument1[1] > argument2[1]) begin
                                out = 1'b1;
                            end
                        end else if (argument1[1][31:31] == 1'b1 && argument2[1][31:31] == 1'b1) begin
                            if (argument1[1] < argument2[1]) begin
                                out = 1'b1;
                            end
                        end else if (argument1[1][31:31] == 1'b0 && argument2[1][31:31] == 1'b1) begin
                            out = 1'b1;
                        end 
                    end
                    
                    bg: begin
                        if (argument1[1][31:31] == 1'b0 && argument2[1][31:31] == 1'b0) begin
                            if (argument1[1] <= argument2[1]) begin
                                out = 1'b1;
                            end
                        end else if (argument1[1][31:31] == 1'b1 && argument2[1][31:31] == 1'b1) begin
                            if (argument1[1] >= argument2[1]) begin
                                out = 1'b1;
                            end
                        end else if (argument1[1][31:31] == 1'b1 && argument2[1][31:31] == 1'b0) begin
                            out = 1'b1;
                        end
                    end

                    bge: begin
                        if (argument1[1][31:31] == 1'b0 && argument2[1][31:31] == 1'b0) begin
                            if (argument1[1] < argument2[1]) begin
                                out = 1'b1;
                            end
                        end else if (argument1[1][31:31] == 1'b1 && argument2[1][31:31] == 1'b1) begin
                            if (argument1[1] > argument2[1]) begin
                                out = 1'b1;
                            end
                        end else if (argument1[1][31:31] == 1'b1 && argument2[1][31:31] == 1'b0) begin
                            out = 1'b1;
                        end
                    end

                    fbne: begin
                        if (fequal_res) begin
                            out = 1'b1;
                        end
                    end

                    fbg: begin
                        if (fequal_res | ~fless_res) begin
                            out = 1'b1;
                        end
                    end

                    fbge: begin
                        if (~fequal_res && ~fless_res) begin
                            out = 1'b1;
                        end
                    end


                endcase // instr_reg[1][31:26]
            end

            if (out == 1'b1 && validate_flag[1]) begin
                // 分岐予測が外れた場合
                validate_flag[0] <= 1'b0;
                validate_flag[1] <= 1'b0;
                validate_flag[2] <= 1'b0;
                for(i=0;i<32;i=i+1) begin
                    int_data_flag[i] <= 1'b0;
                    float_data_flag[i] <= 1'b0;
                end
                waiting <= 1'b0;
                iteration <= prop_iteration[1] + 1;
                pc <= prop_pc[1] + 1;
                buffer_reading_idx <= prop_reading_idx[1];
            end

            instr_reg[2] <= instr_reg[1];
            prop_pc[2] <= prop_pc[1];
            prop_iteration[2] <= prop_iteration[1];
            prop_reading_idx[2] <= prop_reading_idx[1];
            validate_flag[2] <= validate_flag[1];
            jump[2] <= jump[1];


            // ********************
            // 実行フェーズその2(レジスタへの書き込みは常にここで行う)
            // ********************

            validate_flag[3] <= validate_flag[2];
            output_flag <= 1'b0;

            if (validate_flag[2]) begin
                // validate_flag[3]を下げる関係上、ここには6クロック命令を入れてはいけない
                case (instr_reg[2][31:26])
                    special:
                        case (instr_reg[2][5:0])
                            s_add, s_sub, s_mult: begin
                                register_int[instr_reg[2][15:11]] <= result[2];
                                int_data_flag[instr_reg[2][15:11]] <= 1'b0;
                                validate_flag[3] <= 1'b0;
                            end
                            s_mov: begin
                                register_int[instr_reg[2][20:16]] <= result[2];
                                int_data_flag[instr_reg[2][20:16]] <= 1'b0;
                                validate_flag[3] <= 1'b0;
                            end
                            s_ret: begin
                                inst_stop <= 1'b1;
                                validate_flag[3] <= 1'b0;
                            end
                            s_out: begin
                                // output_content <= result[2];
                                output_flag <= 1'b1;
                                validate_flag[3] <= 1'b0;
                            end
                            s_in: begin
                                register_int[instr_reg[2][25:21]] <= result[2];
                                int_data_flag[instr_reg[2][25:21]] <= 1'b0;
                                validate_flag[3] <= 1'b0;
                            end
                            s_fin: begin
                                register_float[instr_reg[2][25:21]] <= result[2];
                                float_data_flag[instr_reg[2][25:21]] <= 1'b0;
                                validate_flag[3] <= 1'b0;
                            end
                        endcase // instr_reg[2][5:0]
                    cop1: begin
                        if (instr_reg[2][5:0] == s_mov) begin
                            register_float[instr_reg[2][20:16]] <= result[2];
                            float_data_flag[instr_reg[2][20:16]] <= 1'b0;
                            validate_flag[3] <= 1'b0;
                        end
                    end
                    sll: begin
                        register_int[instr_reg[2][15:11]] <= result[2];
                        int_data_flag[instr_reg[2][15:11]] <= 1'b0;
                        validate_flag[3] <= 1'b0;
                    end
                    slli: begin
                        register_int[instr_reg[2][20:16]] <= result[2];
                        int_data_flag[instr_reg[2][20:16]] <= 1'b0;
                        validate_flag[3] <= 1'b0;
                    end
                    lw: begin
                        register_int[instr_reg[2][20:16]] <= read_data;
                        int_data_flag[instr_reg[2][20:16]] <= 1'b0;
                        validate_flag[3] <= 1'b0;
                    end
                    lws: begin
                        register_float[instr_reg[2][20:16]] <= read_data;
                        float_data_flag[instr_reg[2][20:16]] <= 1'b0;
                        validate_flag[3] <= 1'b0;
                    end
                    ilw: begin
                        register_int[instr_reg[2][20:16]] <= argument1[2];
                        int_data_flag[instr_reg[2][20:16]] <= 1'b0;
                        validate_flag[3] <= 1'b0;
                    end
                    ilws: begin
                        register_float[instr_reg[2][20:16]] <= argument1[2];
                        float_data_flag[instr_reg[2][20:16]] <= 1'b0;
                        validate_flag[3] <= 1'b0;
                    end
                    addi: begin
                        register_int[instr_reg[2][20:16]] <= result[2];
                        int_data_flag[instr_reg[2][20:16]] <= 1'b0;
                        validate_flag[3] <= 1'b0;
                    end
                    jal, jalr: begin
                        register_int[28] <= result[2];
                        int_data_flag[28] <= 1'b0;
                        validate_flag[3] <= 1'b0;
                    end
                endcase // instr_reg[2][31:26]
                
            end

            instr_reg[3] <= instr_reg[2];
            prop_pc[3] <= prop_pc[2];
            prop_iteration[3] <= prop_iteration[2];
            prop_reading_idx[3] <= prop_reading_idx[2];
            jump[3] <= jump[2];

            // ********************
            // 実行フェーズその3
            // ********************


            instr_reg[4] <= instr_reg[3];
            prop_pc[4] <= prop_pc[3];
            validate_flag[4] <= validate_flag[3];
            prop_iteration[4] <= prop_iteration[3];
            prop_reading_idx[4] <= prop_reading_idx[3];
            jump[4] <= jump[3];

            // ********************
            // 実行フェーズその4
            // ********************

            instr_reg[5] <= instr_reg[4];
            prop_pc[5] <= prop_pc[4];
            validate_flag[5] <= validate_flag[4];
            prop_iteration[5] <= prop_iteration[4];
            prop_reading_idx[5] <= prop_reading_idx[4];
            jump[5] <= jump[4];


            // ********************
            // ストアフェーズ
            // ********************

            if (validate_flag[5]) begin
                case (instr_reg[5][31:26])
                    cop1: begin
                        if (instr_reg[5][25:21] == f_others) begin
                            float_data_flag[instr_reg[5][10:6]] <= 1'b0;
                            register_float[instr_reg[5][10:6]] <= f_result;

                        end else if (instr_reg[5][25:21] == f_mfc1) begin
                            int_data_flag[instr_reg[5][20:16]] <= 1'b0;
                            register_int[instr_reg[5][20:16]] <= f_result;

                        end else if (instr_reg[5][25:21] == f_mtc1) begin
                            float_data_flag[instr_reg[5][15:11]] <= 1'b0;
                            register_float[instr_reg[5][15:11]] <= f_result;

                        end
                    end
                endcase // instr_reg[4][31:26]
            end
        end
    end
endmodule

`default_nettype wire