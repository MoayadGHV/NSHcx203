`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2024 12:34:42 PM
// Design Name: 
// Module Name: tb_andgate
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


module tb_andgate;

logic a, b, c, d, f;


and4gate a1(.a(a), .b(b), .c(c), .d(d), .f(f));




initial begin

    a = 0; b = 0; c = 0; d = 0; #10;
    a = 0; b = 0; c = 0; d = 1; #10;
    a = 0; b = 0; c = 1; d = 0; #10;
    a = 0; b = 0; c = 1; d = 1; #10;
    a = 0; b = 1; c = 0; d = 0; #10;
    a = 0; b = 1; c = 0; d = 1; #10;
    a = 0; b = 1; c = 1; d = 0; #10;
    a = 0; b = 1; c = 1; d = 1; #10;
    a = 1; b = 0; c = 0; d = 0; #10;
    a = 1; b = 0; c = 0; d = 1; #10;
    a = 1; b = 0; c = 1; d = 0; #10;
    a = 1; b = 0; c = 1; d = 1; #10;
    a = 1; b = 1; c = 0; d = 0; #10;
    a = 1; b = 1; c = 0; d = 1; #10;
    a = 1; b = 1; c = 1; d = 0; #10;
    a = 1; b = 1; c = 1; d = 1; #10;

$finish;
end

endmodule
