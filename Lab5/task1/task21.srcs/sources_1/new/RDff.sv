`timescale 1ns / 1ps


module RDff(
    input D,
    input clk,
    input reset,
    output Q,
    output Qbar
    );
    
logic tmp, tmpbar;
rDlatch rdl1(D, ~clk, reset, tmp, tmpbar);
rDlatch rdl2(tmp, clk, reset, Q, Qbar);




endmodule
