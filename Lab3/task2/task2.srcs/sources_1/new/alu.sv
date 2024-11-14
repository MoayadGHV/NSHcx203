`timescale 1ns / 1ps


module alu(
    input [3:0] a,
    input [3:0] b,
    input s0,
    input s1,
    output [3:0] out
    );
    
    logic carryout;  
    logic [3:0] addsubout;
    logic [3:0] mux1out;
    logic [3:0] tmpshft;
    logic [3:0] tmpand;
    
    
    assign tmpshft = a << b;
    assign tmpand = a & b;
    
    fourbitadder fba(a, b, s0, addsubout, carryout);
    
    mux2to1 mux1(tmpshft, tmpand, s0, mux1out);
    mux2to1 mux2(addsubout, mux1out, s1, out);
    
endmodule
