`timescale 1ns / 1ps


module topFPGA (
    input logic CLK100MHZ,
    input logic CPU_RESETN,
    output logic CA,
    CB,
    CC,
    CD,
    CE,
    CF,
    CG,
    DP,
    output logic [7:0] AN,
    output logic [9:0] regO, regAout, regBout
);

  localparam n = 10;
  localparam immS = 4;

  logic [9:0] inst;
  logic [n-1:0] MEMout, control;
  logic [3:0] ramaddress, insAddress;
  logic [n-1:0] ssdreg;
  logic clk, reset;
  
  assign clk   = CLK100MHZ;
  assign reset = CPU_RESETN;


  romAddedInst #(n, immS) myrom (
      .address(insAddress),
      .instruction(inst)
  );

  k2_processor #(n, immS) cpu (
      .clk(clk),
      .reset(reset),
      .inst(inst),
      .MEMin(MEMout),
      .regO(regO),
      .regAout(regAout),
      .regBout(regBout),
      .rW(control),
      .ramaddress(ramaddress),
      .romaddress(insAddress)
  );

  memory #(n, immS) m (
      .address(ramaddress),
      .readWrite(control),
      .reset(reset),
      .clk(clk),
      .in(regAout),
      .out(MEMout),
      .reg16(ssdreg)
  );

  ssd sevSegDisp (
      .clk(clk),
      .inputs(ssdreg),
      .reset(reset),
      .CA(CA),
      .CB(CB),
      .CC(CC),
      .CD(CD),
      .CE(CE),
      .CF(CF),
      .CG(CG),
      .DP(DP),
      .AN(AN)
  );



endmodule
