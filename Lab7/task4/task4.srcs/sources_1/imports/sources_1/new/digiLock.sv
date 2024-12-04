`timescale 1ns / 1ps


module digiLockFPGA(
    input logic CLK100MHZ,
    output logic CA, CB, CC, CD, CE, CF, CG, DP,
    output logic [7:0] AN, 
    output logic [1:0] LED,   
    input logic [15:0] SW,
    input logic CPU_RESETN, 
    input logic BTNC, BTNL, BTNR, BTNU

    );
        


    // Seven segments Controller
    wire [6:0] Seg;
    wire [3:0] digits[0:7]; 
    wire [3:0] status;
    logic [3:0] counter;
    logic [1:0] missCounter;

digitalLock dl(.clk(CLK100MHZ), .reset(CPU_RESETN), .open(BTNL), .close(BTNR), .edit(BTNU), .pass(SW[3:0]), .status(status));
    
    
    assign digits[0] = SW[0];
    assign digits[1] = SW[1];
    assign digits[2] = SW[2];
    assign digits[3] = SW[3];
    assign digits[4] = 4'b1111;
    assign digits[5] = missCounter[1:0];
    assign digits[6] = counter[3:0];
    assign digits[7] = status[3:0];
    
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
