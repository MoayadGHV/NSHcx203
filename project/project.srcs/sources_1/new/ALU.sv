`timescale 1ns / 1ps


module ALU #(int n = 8)(

    input [n-1:0] a,
    input [n-1:0] b,
    input op,
    output [n-1:0] s,
    output carryOut
    );

    logic [n-1:0] bop;
    
    
    assign bop = (op) ? ~b : b;


    
    
    fulladder #(n) fa1( .a(a), .b(bxm), .c(m), .s(s), .carry(carryOut));


    
endmodule
