`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2024 12:41:43 PM
// Design Name: 
// Module Name: main
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


module main #(int n = 8)(
    input clk,
    input reset, 
    output [n-1:0] regO,
    output logic [n-1:0] regAout,
    output logic [n-1:0] regBout
    );



    
    logic [7:0] inst;
    logic j, c, d1, d0, sreg, s;
    logic [2:0] imm;
    
    logic [3:0] addressIndex;
    
    assign j = inst[7];
    assign c = inst[6];
    assign d1 = inst[5];
    assign d0 = inst[4];
    assign sreg = inst[3];
    assign s = inst[2];
    assign imm = inst[2:0];
    
    
    
    logic [n-1:0] ALUout, MUXout;//, regAout, regBout;
    logic ALUcarry, enA, enB, enO, Cout, PCen;
    logic tmp1;

    
    
    programcounter pc(.in(imm), .en(PCen), .reset(reset), .clk(clk), .out(addressIndex));
    ROM rom(.address(addressIndex), .instruction(inst));
    
    mux #(n) mux(.in1(imm), .in2(ALUout), .select(sreg), .outM(MUXout));
    Decoder decoder(.De({d1, d0}), .Den({enA, enB, enO}));
    
    register #(n) RA(.in(MUXout), .clk(clk), .en(enA), .reset(reset), .out(regAout));
    register #(n) RB(.in(MUXout), .clk(clk), .en(enB), .reset(reset), .out(regBout));
    register #(n) RO(.in(regAout), .clk(clk), .en(enO), .reset(reset), .out(regO));
    
    ALU  #(n) alu(.a(regAout), .b(regBout), .op(s), .out(ALUout), .carryOut(ALUcarry));
    
    RDff carryff(.clk(clk), .reset(reset), .ld(1'b1), .D(ALUcarry), .Q(Cout));
    
    and(tmp1, c, Cout);
    or(PCen, tmp1, j);
    


endmodule
