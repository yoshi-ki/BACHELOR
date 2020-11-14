`default_nettype none

module test();
    reg clk;
    wire [31:0] reg3;
    wire [31:0] pc;
    wire err;

    parameter cycle = 2;

    top top_test(clk, reg3, pc, err);

    always #(cycle / 2) begin
        clk = ~clk;
    end 

    initial begin
        clk <= 1'b0;
    end 

endmodule



