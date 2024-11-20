`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2024 02:11:49 PM
// Design Name: 
// Module Name: tb_nbitctr
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


module tb_nbitctr;
localparam int N = 10;
logic clk, reset;
logic [$clog2(N)-1:0] count;

nbitctr nBC(.clk(clk), .reset(reset), .count(count));

always #5 clk = ~clk;


initial begin
    clk = 0;
    reset = 0; #1; reset = 1;
    #1000;
    $finish;
end
endmodule
