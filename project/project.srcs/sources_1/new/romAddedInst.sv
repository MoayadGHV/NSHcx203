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


module romAddedInst(
    input [3:0] address,
    output logic [7:0] instruction
    );
    
    
    always @(*) begin
        case(address)
        
            4'd0:    instruction = 8'b00001010; 
            4'd1:    instruction = 8'b10111000; 
            4'd2:    instruction = 8'b01011000; 
            4'd3:    instruction = 8'b10110000; 
            default: instruction = 8'b00000000;
        endcase
    end
    
endmodule
