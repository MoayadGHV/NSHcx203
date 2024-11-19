`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2024 10:46:46 AM
// Design Name: 
// Module Name: dFlipFlop
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


module dFlipFlop(
    input D,
    input clk,
    input reset,
    output Q,
    output Qbar
    );
    
    
    logic dtmp;
    
    assign dtmp = (!reset) ? 1'b0 : D;
    assign Q =  (clk) ? dtmp : Q;
    
endmodule
