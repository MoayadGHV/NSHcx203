`timescale 1ns / 1ps


module mainFPGA(
    input logic CLK100MHZ,
    output logic CA, CB, CC, CD, CE, CF, CG, DP,
    output logic [7:0] AN,    
    input logic [15:0] SW,
    input logic CPU_RESETN
    );
        
    localparam int n = 8;
    localparam int clkdiv = 100_000_000; 
    logic newclk;
    logic [n-1:0] regO, regAout, regBout, secondmem;
    // Seven segments Controller
    wire [6:0] Seg;
    wire [3:0] digits[0:7]; 
    
    
    nbitctr #(clkdiv) nBC(.clk(CLK100MHZ), .reset(CPU_RESETN), .clk_out(newclk));
    mainAddedInst #(n) fibo(.clk(newclk), .reset(CPU_RESETN), .regO(regO), .regAout(regAout), .regBout(regBout));
//    assign fibo.m.dataFF[1]=1;
    

    
    
    assign digits[0] = regAout[3:0];
    assign digits[1] = regAout[7:4];
    assign digits[2] = 4'b1111;
    assign digits[3] = regBout[3:0];
    assign digits[4] = regBout[7:4];
    assign digits[5] = 4'b1111;
    assign digits[6] = regO[3:0];
    assign digits[7] = regO[7:4];
    
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