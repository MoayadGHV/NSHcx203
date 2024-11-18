`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2024 12:28:25 PM
// Design Name: 
// Module Name: fourbitregBehData
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


module fourbitregBehData(
    input logic BTNC_IBUF,     
    output logic CA, CB, CC, CD, CE, CF, CG, DP,
    output logic [7:0] AN,    
    input logic [15:0] SW,
    input logic CPU_RESETN
    );
        

//    logic [3:0] Qdf;
//    logic [3:0] Qbardf;
//    logic [3:0] Qb;
//    logic [3:0] Qbarb;

    
    // Seven segments Controller
    wire [6:0] Seg;
    wire [3:0] digits[0:7];
    wire [3:0] out[0:3];
    wire switch0;
    wire switch1;
    
//    cipher cph(.s(SW[1:0]), .out(out));

    fourbitregdataflow fbrdf(.D(SW[3:0]), .clk(BTNC_IBUF), .reset(CPU_RESETN), .Q(out[2]), .Qbar(out[3]));
    fourbitregbehave fbrb(.D(SW[3:0]), .clk(BTNC_IBUF), .reset(CPU_RESETN), .Q(out[0]), .Qbar(out[1]));


    
    
    assign digits[0] = out[3];
    assign digits[1] = out[2];
    assign digits[2] = out[1];
    assign digits[3] = out[0];
    assign digits[4] = 4'b1111;
    assign digits[5] = 4'b1111;
    assign digits[6] = 4'b1111;
    assign digits[7] = 4'b1111;
    
    sev_seg_controller ssc(
        .clk(BTNC_IBUF),
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
