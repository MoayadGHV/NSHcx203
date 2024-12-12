`timescale 1ns / 1ps


module ssd (
    input logic clk,
    output logic CA,
    CB,
    CC,
    CD,
    CE,
    CF,
    CG,
    DP,
    output logic [7:0] AN,
    input logic [9:0] inputs,
    input logic reset
);

  // Seven segments Controller
  wire [6:0] Seg;
  wire [3:0] digits[0:7];




  assign digits[0] = inputs[3:0];
  assign digits[1] = inputs[7:4];
  assign digits[2] = inputs[9:8];
  assign digits[3] = 4'b1111;
  assign digits[4] = 4'b1111;
  assign digits[5] = 4'b1111;
  assign digits[6] = 4'b1111;
  assign digits[7] = 4'b1111;

  sev_seg_controller ssc (
      .clk(clk),
      .resetn(reset),
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
