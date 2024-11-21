`timescale 1ns / 1ps

module halfadder #(int n = 8) (
    input [n-1:0] a,
    input [n-1:0] b,
    output [n-1:0] s,
    output [n-1:0] c
    );
    
    assign s = a ^ b;
    assign c = a & b;
    
endmodule
