`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2024 11:39:24 AM
// Design Name: 
// Module Name: ROM
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


module ROM (
    input [3:0] address,
    output logic [7:0] instruction
    );
    
    
    always @(*) begin
        case(address)
        
            4'd0:    instruction = 8'b00001000; 
            4'd1:    instruction = 8'b00011001; 
            4'd2:    instruction = 8'b00100000; 
            4'd3:    instruction = 8'b00010000; 
            4'd4:    instruction = 8'b01110000; 
            4'd5:    instruction = 8'b00000000; 
            4'd6:    instruction = 8'b00010100; 
            4'd7:    instruction = 8'b00000100; 
            4'd8:    instruction = 8'b10110010; 
            default: instruction = 8'b00000000;
        endcase
    end
    
endmodule
