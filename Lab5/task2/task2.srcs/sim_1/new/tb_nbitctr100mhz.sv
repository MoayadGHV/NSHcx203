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


module tb_nbitctr100mhz;
localparam longint N = 100;
logic clk, reset, clk_out;
logic [$clog2(N)-1:0] count;

nbitctr #(N) nBC(.clk(clk), .reset(reset), .clk_out(clk_out), .count(count));

always #1 clk = ~clk;


initial begin
    clk = 0;reset = 0; #1; 
    reset = 1; 
end
endmodule
