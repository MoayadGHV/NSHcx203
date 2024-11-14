`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2024 01:41:27 PM
// Design Name: 
// Module Name: fulladder
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


module fulladder(
    input a,
    input b,
    input c, 
    output s,
    output carry
    );
    
    
logic carry1, carry2, s1;


halfadder ha1(.a(a), .b(b), .s(s1), .c(carry1));
halfadder ha2(.a(s1), .b(c),.s(s), .c(carry2));
or(carry, carry1, carry2);

endmodule
