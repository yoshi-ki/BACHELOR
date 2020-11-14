`default_nettype none

module block_memory (
	input wire clk,
	input wire we,
	input wire [4:0] addr, 
	input wire [31:0] w_data,
	output wire [31:0] r_data);

	localparam memory_size   = 1024;


	reg [31:0] memory [0:memory_size - 1];
	reg [31:0] addr_reg;

    always @(posedge clk) begin
    	if (we) begin
    		memory[addr] <= w_data;
    	end
    	addr_reg <= addr;

    end

    assign r_data = memory[addr_reg];
   
endmodule
`default_nettype wire



