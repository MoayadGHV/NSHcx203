`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2024 02:09:44 PM
// Design Name: 
// Module Name: tb_multiplier
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


module tb_multiplier;

logic [7:0] a, b;
logic clk, reset, ld;
logic [15:0] out;


multiplier mult1(.a(a), .b(b), .clk(clk), .reset(reset), .ld(ld), .out(out));

always #5 clk = ~clk;

initial begin
    clk = 0; reset = 0; ld = 0; #10;
    reset = 1; a = 8'b00000011; b = 8'b00000011; ld = 1; #20;
    ld = 0; #120;
    $finish;
end
    


endmodule
