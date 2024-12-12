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


module k2_processor #(
    int n = 8,
    int immS = 4
) (
    input clk,
    input reset,
    input [9:0] inst,
    input [n-1:0] MEMin,
    output logic [n-1:0] regO,
    output logic [n-1:0] regAout,
    output logic [n-1:0] regBout,
    output logic rW,
    output logic [immS-1:0] ramaddress,
    output logic [immS-1:0] romaddress
);




  logic j, c, d1, d0, sreg, s;
  logic [immS-1 :0] imm;



  assign j = inst[9];
  assign c = inst[8];
  assign d1 = inst[7];
  assign d0 = inst[6];
  assign sreg = inst[5];
  assign s = inst[4];
  assign imm = inst[4:0];



  logic [n-1:0] ALUout, MUXout;
  logic aluCarry, aluZero, enA, enB, enO, Cout, Zout, pcEn;




  programcounter #(immS) pc (
      .in(imm),
      .en(pcEn),
      .reset(reset),
      .clk(clk),
      .out(romaddress)
  );


  mux2s #(n) mux (
      .in1(ALUout),
      .in3(imm),
      .in4(MEMin),
      .select({sreg, c}),
      .outM(MUXout)
  );

  Decoder decoder (
      .De ({d1, d0}),
      .Den({enA, enB, enO})
  );

  register #(n) RA (
      .in(MUXout),
      .clk(clk),
      .en(enA),
      .reset(reset),
      .out(regAout)
  );

  register #(n) RB (
      .in(MUXout),
      .clk(clk),
      .en(enB),
      .reset(reset),
      .out(regBout)
  );

  register #(n) RO (
      .in(regAout),
      .clk(clk),
      .en(enO),
      .reset(reset),
      .out(regO)
  );

  ALU #(n) alu (
      .a(regAout),
      .b(regBout),
      .op(s),
      .out(ALUout),
      .carryOut(aluCarry),
      .zeroOut(aluZero)
  );

  RDff carryff (
      .clk(clk),
      .reset(reset),
      .ld(1'b1),
      .D(aluCarry),
      .Q(Cout)
  );

  RDff zeroff (
      .clk(clk),
      .reset(reset),
      .ld(1'b1),
      .D(aluZero),
      .Q(Zout)
  );


  assign rW = (j & sreg & ~c);
  assign pcEn = (~sreg & c & Cout & ~j) | (j & ~sreg & ~c) | (c & Zout & sreg & j);
  assign data = MEMin;
  assign ramaddress = imm;



endmodule

