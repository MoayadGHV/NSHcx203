`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 

module mux2to1(
    input [3:0] a,
    input [3:0] b,
    input s,
    output [3:0] out
    );
    
    
    assign out = (!s) ? a : b;
    
endmodule
