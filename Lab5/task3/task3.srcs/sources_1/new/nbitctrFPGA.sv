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


module mbitctrFPGA(
    input logic CLK100MHZ,
    output logic CA, CB, CC, CD, CE, CF, CG, DP,
    output logic [7:0] AN,    
    input logic [15:0] SW,
    input logic CPU_RESETN
    );
        

//    logic [3:0] Qdf;
//    logic [3:0] Qbardf;
//    logic [3:0] Qb;
//    logic [3:0] Qbarb;
    logic [23:0] counter;
    reg count;
    // Seven segments Controller
    wire [6:0] Seg;
    wire [3:0] digits[0:7]; 
    
    
    nbitctr #(100000000) nBC(.clk(CLK100MHZ), .reset(CPU_RESETN), .clk_out(count));
    counter ctr(.clk(count), .count(counter));

//    assign counter = (count == 1'b1) ? counter + 1 : counter ;
    

    
    
    assign digits[0] = counter[3:0];
    assign digits[1] = counter[7:4];
    assign digits[2] = 4'b1111;
    assign digits[3] = counter[11:8];
    assign digits[4] = counter[15:12];
    assign digits[5] = 4'b1111;
    assign digits[6] = counter[19:16];
    assign digits[7] = counter[23:20];
    
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
