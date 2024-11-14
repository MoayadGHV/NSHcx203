`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2024 01:48:29 PM
// Design Name: 
// Module Name: fourbitadder
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


module fourbitadder(
    input [3:0] a,
    input [3:0] b,
    input m,
    output [3:0] s,
    output carryOut
    );
    
    logic c1, c2, c3;
    logic [3:0] bxm;
    
    
    xor (bxm[0], m, b[0]);
    xor (bxm[1], m, b[1]);
    xor (bxm[2], m, b[2]);
    xor (bxm[3], m, b[3]);

    
    
    fulladder fa1( .a(a[0]), .b(bxm[0]), .c(m), .s(s[0]), .carry(c1));
    fulladder fa2( .a(a[1]), .b(bxm[1]), .c(c1), .s(s[1]), .carry(c2));
    fulladder fa3( .a(a[2]), .b(bxm[2]), .c(c2), .s(s[2]), .carry(c3));
    fulladder fa4( .a(a[3]), .b(bxm[3]), .c(c3), .s(s[3]), .carry(carryOut));

endmodule
