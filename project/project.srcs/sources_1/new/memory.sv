`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2024 02:43:35 PM
// Design Name: 
// Module Name: memory
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


module memory #(int n = 8)(
    input [2:0] address,
    input readWrite,
    input reset,
    input clk,
    input [n-1:0] in,
    output logic [n-1:0] out
    );
    
    
    logic [7:0] en;
    logic [7:0] value[8];
    
    genvar i;
    generate
        for (i = 0; i < 8; i = i + 1) begin : gen_registers
            register #(8) R ( .in(in), .clk(clk), .en(en[i]), .reset(reset), .out(value[i]));
        end
    endgenerate        

    always @(*) begin
        if (readWrite) begin
            en <= 8'b0;
            en[address] <= 1'b1;
        end else if (!readWrite) begin
            out <= value[address];
            en = 8'b0;
        end
    end
    
    
    
endmodule
