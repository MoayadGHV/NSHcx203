`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
////////////////////////////////////////////////////////////////////////////


module RDff(
    input clk,
    input reset,
    input ld,
    input logic D,
    output logic Q
    );



always @(posedge clk, negedge reset) begin
    if (~reset) Q <= 1'b0;
    else Q <= D;
end


endmodule
