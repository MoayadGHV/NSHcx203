`timescale 1ns / 1ps


module fulladder #(int n = 8)(
    input [n-1:0] a,
    input [n-1:0] b,
    input [n-1:0] c, 
    output [n-1:0] s,
    output  carry
    );
    
    
logic [n-1:0] carry1, carry2, s1;


halfadder #(n) ha1(.a(a), .b(b), .s(s1), .c(carry1));
halfadder #(n) ha2(.a(s1), .b(c),.s(s), .c(carry2));
assign carry = carry1[n-1] | carry2[n-1];

endmodule