`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2024 02:40:16 PM
// Design Name: 
// Module Name: tb_fourBitCounter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_fourBitCounter;

logic [3:0]D, count;
logic clk, reset, ld, upDown;

fourBitCounter fBC(upDown, D, clk, reset, ld, count);

always #5 clk = ~clk;

initial begin
    clk = 0; upDown = 0;
    D = 4'b0000; reset = 0; ld = 1; #10;
    reset = 1; #35;
    D = 4'b0111; #25;
    reset = 0; #10; reset = 1; #30;
    ld = 0; #10; ld = 1; #30;
    upDown = 1; #100;
    $finish;
end

endmodule
