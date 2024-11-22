`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2024 08:56:09 PM
// Design Name: 
// Module Name: mainAddedInst
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


module mainAddedInst#(int n = 8)(
    input clk,
    input reset, 
    output [n-1:0] regO
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
    
    
    
    logic [n-1:0] ALUout, MUXout, regAout, regBout, MEMout;
    logic aluCarry, enA, enB, enO, Cout, pcEn, rW;
    

    
    
    programcounter pc(.in(imm), .en(pcEn), .reset(reset), .clk(clk), .out(addressIndex));
    romAddedInst rom(.address(addressIndex), .instruction(inst));
    
    mux2s #(n) mux(.in1(ALUout), .in3(imm), .in4(MEMout), .select({sreg, c}), .outM(MUXout));
    Decoder decoder(.De({d1, d0}), .Den({enA, enB, enO}));
    
    memory #(n) m(.address(imm), .readWrite(rW), .reset(reset), .clk(clk), .in(regAout), .out(MEMout));
    
    register #(n) RA(.in(MUXout), .clk(clk), .en(enA), .reset(reset), .out(regAout));
    register #(n) RB(.in(MUXout), .clk(clk), .en(enB), .reset(reset), .out(regBout));
    register #(n) RO(.in(regAout), .clk(clk), .en(enO), .reset(reset), .out(regO));
    
    ALU  #(n) alu(.a(regAout), .b(regBout), .op(s), .out(ALUout), .carryOut(aluCarry));
    
    RDff carryff(.clk(clk), .reset(reset), .ld(1'b1), .D(aluCarry), .Q(Cout));
    
    assign rW = ( j & sreg);
    assign pcEn = (~sreg & c & Cout) | (j & ~sreg);
    


endmodule

