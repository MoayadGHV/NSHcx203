`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2024 01:46:14 PM
// Design Name: 
// Module Name: tb_fulladder
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


module tb_fulladder;

logic a, b, c, s, carry;

fulladder fa(.a(a), .b(b), .c(c), .s(s) , .carry(carry));


initial begin

    a = 0; b = 0; c = 0; #10;
    a = 0; b = 0; c = 1; #10;
    a = 0; b = 1; c = 0; #10;
    a = 0; b = 1; c = 1; #10;
    a = 1; b = 0; c = 0; #10;
    a = 1; b = 0; c = 1; #10;
    a = 1; b = 1; c = 0; #10;
    a = 1; b = 1; c = 1; #10;
    
    
    $finish;
    
end

endmodule
