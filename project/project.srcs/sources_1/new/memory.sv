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
    logic [n-1:0] value[n-1];
    
    register R0(.in(in), .clk(clk), .en(en), .reset(reset), .Q(value[0]));        
    register R1(.in(in), .clk(clk), .en(en), .reset(reset), .Q(value[1]));        
    register R2(.in(in), .clk(clk), .en(en), .reset(reset), .Q(value[2]));        
    register R3(.in(in), .clk(clk), .en(en), .reset(reset), .Q(value[3]));        
    register R4(.in(in), .clk(clk), .en(en), .reset(reset), .Q(value[4]));        
    register R5(.in(in), .clk(clk), .en(en), .reset(reset), .Q(value[5]));        
    register R6(.in(in), .clk(clk), .en(en), .reset(reset), .Q(value[6]));        
    register R7(.in(in), .clk(clk), .en(en), .reset(reset), .Q(value[7]));        

    always @(*) begin
        if (readWrite) begin
            case(address)
                3'd0:    en = 8'b00000001; 
                3'd1:    en = 8'b00000010; 
                3'd2:    en = 8'b00000100; 
                3'd3:    en = 8'b00001000; 
                3'd4:    en = 8'b00010000; 
                3'd5:    en = 8'b00100000; 
                3'd6:    en = 8'b01000000; 
                3'd7:    en = 8'b10000000; 
                default: en = 8'b00000000;
            endcase
        end else if (!readWrite) begin
            case(address)
                3'd0:    out = value[0]; 
                3'd1:    out = value[1]; 
                3'd2:    out = value[2]; 
                3'd3:    out = value[3]; 
                3'd4:    out = value[4]; 
                3'd5:    out = value[5]; 
                3'd6:    out = value[6]; 
                3'd7:    out = value[7]; 
                default: out = 8'b00000000;
            endcase
        end
    end
    
    
    
endmodule
