`default_nettype none

module datamover_axi
  #( parameter AWIDTH = 12,
     parameter IAWIDTH = 10 )
   ( output wire [IAWIDTH-1:0]        iaddr,
     input wire [4+AWIDTH+AWIDTH-1:0] instr,
     input wire                       instr_val, //ここが立ったら命令を始める

     // AXI4-lite master memory interface
     // address write channel
     output wire                      axi_awvalid,
     input wire                       axi_awready,
     output wire [31:0]               axi_awaddr,
     output reg [2:0]                 axi_awprot,
     // data write channel
     output wire                      axi_wvalid,
     input wire                       axi_wready,
     output reg [31:0]                axi_wdata,
     output reg [3:0]                 axi_wstrb,
     // response channel
     input wire                       axi_bvalid,
     output wire                      axi_bready,
     input wire [1:0]                 axi_bresp,
     // address read channel
     output wire                      axi_arvalid,
     input wire                       axi_arready,
     output reg [31:0]                axi_araddr,
     output reg [2:0]                 axi_arprot,
     // read data channel
     input wire                       axi_rvalid,
     output reg                       axi_rready,
     input wire [31:0]                axi_rdata,
     input wire [1:0]                 axi_rresp,

     output reg                       data_rdy,//命令を実行中と待機中は0,実行完了後1
     input wire                       clk,
     input wire                       rstn);

   reg [9:0] 		     state;
   reg [9:0]			 state2;
   reg [IAWIDTH-1:0] 	     pc;
   reg					awvalid;
   reg					wvalid;
   reg					bready;
   reg					arvalid;
   wire [3:0]		     opcode;
   wire [AWIDTH-1:0] 	     op_a;
   wire [AWIDTH-1:0] 	     op_b;   
   reg					 flag;

   localparam s_wait        = 10'b0000000001;
   localparam s_fetch 		= 10'b0000000010;
   localparam s_1			= 10'b0000000100;
   localparam s_2			= 10'b0000001000;
   localparam s_3			= 10'b0000010000;
   localparam s_4			= 10'b0000100000;
   localparam s_5			= 10'b0001000000;
   localparam s_6			= 10'b0010000000;
   localparam s_7			= 10'b0100000000;
   localparam s_8			= 10'b1000000000;

   assign opcode = instr[4+AWIDTH+AWIDTH-1:AWIDTH+AWIDTH];
   assign op_a = instr[AWIDTH-1:0]; //copy 元アドレス
   assign op_b = instr[AWIDTH+AWIDTH-1:AWIDTH]; //copy先アドレス
  
  //wireの初期化 
   assign axi_awaddr = {18'b0,op_b,2'b0};

   //wireの部分をregisterにつなげておく
   assign iaddr = pc;
   assign axi_awvalid = awvalid;
   assign axi_wvalid = wvalid;
   assign axi_bready = bready;
   assign axi_arvalid = arvalid;

   always @(posedge clk) begin
      if (~rstn) begin
         state <= s_4;
         data_rdy <= 1'b0;
         pc <= '0;
		 awvalid <= 1'b0;
		 axi_awprot = 3'b0;
		 wvalid <= 1'b0;
		 axi_wdata <= 32'b0;
		 axi_wstrb <= 4'b1111;
		 bready <= 1'b0;
		 arvalid <= 1'b0;
		 axi_araddr <= 32'b0;
		 axi_arprot <= 3'b0;
		 axi_rready <= 1'b0;

		 data_rdy <= 1'b0;
		 flag <= 1'b0;
      end 
	  else if (state == s_4) begin
	    bready <= 1'b0;
		if (flag == 1'b1) begin
		 if(axi_wready == 1 & axi_awready == 1) begin
			wvalid <= 1'b0;
			awvalid <= 1'b0;
			state <= s_7;
		 end
         else if(axi_wready == 1 | axi_awready == 1) begin
		 	if(axi_wready == 1) begin
				wvalid <= 1'b0;
				state <= s_5;
			end
			else begin
				awvalid <= 1'b0;
				state <= s_6;
			end
		 end
	    end
	  end else if (state == s_5) begin
	  	 if(axi_awready == 1) begin
			awvalid <= 1'b0;
			state <= s_7;
		 end
	  end else if (state == s_6) begin
	  	 if(axi_wready == 1) begin
			wvalid <= 1'b0;
			state <= s_7;
		 end
	  end else if (state == s_7) begin
	  	 if(axi_bvalid == 1) begin
			 bready <= 1'b1;
			 flag <= 1'b0;
			 pc <= pc + 1'b1;
			 state <= s_4;
		 end
	  end
	  else begin
		  state <= s_4;
	  end
   end

always @(posedge clk) begin
      if (~rstn) begin
         state2 <= s_wait;
         data_rdy <= 1'b0;
         pc <= '0;
		 awvalid <= 1'b0;
		 axi_awprot = 3'b0;
		 wvalid <= 1'b0;
		 axi_wdata <= 32'b0;
		 axi_wstrb <= 4'b1111;
		 bready <= 1'b0;
		 arvalid <= 1'b0;
		 axi_araddr <= 32'b0;
		 axi_arprot <= 3'b0;
		 axi_rready <= 1'b0;
		 flag <= 1'b0;
		 data_rdy <= 1'b0;
      end else if (state2 == s_wait) begin
         pc <= '0;
         if (instr_val) begin
            state2 <= s_fetch;
         end
	  end else if (state2 == s_fetch) begin
		 state2 <= s_1;
      end else if (state2 == s_1) begin
         if (opcode == 4'b0000) begin
			data_rdy <= 1'b0;
			axi_arprot <= 3'b0;
			axi_araddr <= {18'b0,op_a,2'b0};
			arvalid <= 1'b1;
			state2 <= s_2;
         end else begin
            state2 <= s_wait;
            data_rdy <= 1'b1;
         end
      end else if (state2 == s_2) begin
		 if (axi_arready) begin
			arvalid <= 1'b0;
		    state2 <= s_3;
		 end
	  end else if (state2 == s_3) begin
	 	 if (axi_rvalid) begin
			axi_rready <= 1'b1;
			state2 <= s_4;
		 end
	  end else if (state2 == s_4) begin
	    axi_rready <= 1'b0;
		if (flag == 1'b0) begin
			axi_wdata <= axi_rdata;
            axi_wstrb <= 4'b1111;
            axi_awprot <= 3'b0;
			state2 <= s_5;
	    end
	  end else if (state2 == s_5) begin
			awvalid <= 1'b1;
            wvalid <= 1'b1;
            flag <= 1'b1;
            state2 <= s_fetch;
	  end
end
   
endmodule

`default_nettype wire
