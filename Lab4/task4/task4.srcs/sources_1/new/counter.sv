`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2024 12:28:25 PM
// Design Name: 
// Module Name: 
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


module counter(
    input logic CLK100MHZ,
    input logic BTNC,
    output logic CA, CB, CC, CD, CE, CF, CG, DP,
    output logic [7:0] AN,    
    input logic [15:0] SW,
    input logic CPU_RESETN
    );
        

    
    // Seven segments Controller
    wire [6:0] Seg;
    wire [3:0] digits[0:7];
    wire [3:0] out;
    wire switch1;
    
    fourBitCounter fBC( .upDown(SW[15]), .D(SW[3:0]), .clk(BTNC), .reset(CPU_RESETN), .ld(SW[14]), .count(out));

    
    
    assign digits[0] = SW[3:0];
    assign digits[1] = 4'b1111;
    assign digits[2] = 4'b1111;
    assign digits[3] = 4'b1111;
    assign digits[4] = 4'b1111;
    assign digits[5] = 4'b1111;
    assign digits[6] = 4'b1111;
    assign digits[7] = out;
    
    sev_seg_controller ssc(
        .clk(CLK100MHZ),
        .resetn(CPU_RESETN),
        .digits(digits),
        .Seg(Seg),
        .AN(AN)
    );
    
    
    assign CA = Seg[0];
    assign CB = Seg[1];
    assign CC = Seg[2];
    assign CD = Seg[3];
    assign CE = Seg[4];
    assign CF = Seg[5];
    assign CG = Seg[6];
    assign DP = 1'b1; 
        
        
    
endmodule
