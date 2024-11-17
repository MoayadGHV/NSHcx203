`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2024 02:39:25 PM
// Design Name: 
// Module Name: task1
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


module rDlatch(
    input D,
    input clk,
    input reset,
    output Q,
    output Qbar
    );
    
    logic tmp1, tmp2, tmp3, tmp4;
    
    
    nand (tmp1, D, clk);
    not (tmp4, D);
    nand (tmp2, clk, tmp4);
    nand (tmp3, tmp1, Qbar);
    nand (Qbar, tmp2, Q);
    and (Q, reset, tmp3);
    
    
endmodule
