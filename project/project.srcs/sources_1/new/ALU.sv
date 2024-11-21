`timescale 1ns / 1ps


module ALU #(int n = 8)(

    input [n-1:0] a,
    input [n-1:0] b,
    input op,
    output [n-1:0] out,
    output carryOut
    );

    logic [n-1:0] bop;
    
    assign out = (op) ? a - b : a + b;

//    assign  = a + bop;

    assign carryOut = ~(((a[n-1] & b[n-1])) | ((a[n-1] ^ b[n-1])& out[n-1]));
    
    


    
endmodule
