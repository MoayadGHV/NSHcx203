`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2024 03:36:20 PM
// Design Name: 
// Module Name: RDff
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
