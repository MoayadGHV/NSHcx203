`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2024 09:16:37 PM
// Design Name: 
// Module Name: romAddedInst
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


module romAddedInst #(int n = 10, int immS = 5) (
    input [immS-1:0] address,
    output logic [n-1:0] instruction
    );
    
    
    always @(*) begin
        case(address)
            
            4'd0:    instruction = 10'b1100100000; 
            4'd1:    instruction = 10'b1011100010; 
            4'd2:    instruction = 10'b0010000000; 
            4'd3:    instruction = 10'b0100100001; 
            4'd4:    instruction = 10'b0101100010; 
            4'd5:    instruction = 10'b0010000000; 
            4'd6:    instruction = 10'b1011100010; 
            4'd7:    instruction = 10'b0000000000; 
            4'd8:    instruction = 10'b0111000000;
            4'd9:    instruction = 10'b1011000100; 
            default: instruction = 10'b0000000000;
        endcase
    end
    
endmodule
