`default_nettype none

module receiver #(CLK_PER_HALF_BIT = 1875) (
               output reg [7:0] rdata,
               output reg       rdata_ready,
               output reg       ferr,
               input wire         rxd,
               input wire         clk,
               input wire         rstn);
	
	localparam e_clk_bit = CLK_PER_HALF_BIT * 2 - 1;

	localparam e_clk_start_bit = CLK_PER_HALF_BIT;
	

	reg fin_start_bit;
	reg [31:0] counter;
	reg next;
	reg [3:0] status;
	reg rst_ctr;

	localparam r_idle = 0;
	localparam r_start_bit = 1;
	localparam r_bit_0 = 2;
	localparam r_bit_1 = 3;
	localparam r_bit_2 = 4;
	localparam r_bit_3 = 5;
	localparam r_bit_4 = 6;
	localparam r_bit_5 = 7;
	localparam r_bit_6 = 8;
	localparam r_bit_7 = 9;
	localparam r_stop_bit = 10;

	always @(posedge clk) begin
		if (~rstn) begin
			counter <= 0;
			next <= 0;
			fin_start_bit <= 0;
		end else begin
			if (counter == e_clk_bit || rst_ctr) begin
				counter <= 0;
			end else begin
				counter <= counter + 1;
			end
			if (~rst_ctr && counter == e_clk_bit) begin
		    	next <= 1;
		    end else begin
		    	next <= 0;
		    end
		    if (~rst_ctr && counter == e_clk_start_bit) begin
		    	fin_start_bit <= 1;
		    end else begin
		    	fin_start_bit <= 0;
		    end
		end
	end	

   	always @(posedge clk) begin
    	if (~rstn) begin
	      	rdata <= 8'b0;
	      	rdata_ready <= 1'b0;
	      	ferr <= 1'b0;
			status <= 0;
		end else begin
			rst_ctr <= 0;
			if (status == r_idle) begin
				rdata_ready <= 0;
				rdata <= 8'b0;
				if (~rxd) begin
					status <= r_start_bit;
					rst_ctr <= 1;
				end
			end else if (status == r_start_bit) begin
				if (rxd) begin
					status <= r_idle;
					rst_ctr <= 1;
				end else if (fin_start_bit) begin
					status <= r_bit_0;
					rst_ctr <= 1;
				end		
			end else if (status == r_stop_bit) begin
				if (rxd) begin
					rdata_ready <= 1;
					status <= r_idle;
				end else begin
					ferr <= 1;
					rdata_ready <= 1;
					status <= r_idle;
				end
			end else if (next) begin
				if (status == r_bit_7) begin
					rdata <= rdata >> 1;
					rdata[7] <= rxd;
					status <= r_stop_bit;
				end else begin
					rdata <= rdata >> 1;
					rdata[7] <= rxd;
					status <= status+1;
				end
			end
		end
   	end
   
endmodule
`default_nettype wire

