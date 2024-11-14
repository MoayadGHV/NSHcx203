`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2024 12:25:48 PM
// Design Name: 
// Module Name: cipher
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


module cipher(
    input logic [1:0] s,
    output logic [3:0] out[0:3]
    );
    
    always @(*) begin
        case(s)
            4'b00: begin
                out[0] = 4'b1100;
                out[1] = 4'b0000;
                out[2] = 4'b1101;
                out[3] = 4'b1110;
                end
            4'b01: begin
                out[0] = 4'b1110;
                out[1] = 4'b0000;
                out[2] = 4'b1100;
                out[3] = 4'b1101;
                end
            4'b10: begin
                out[0] = 4'b1101;
                out[1] = 4'b1110;
                out[2] = 4'b1100;
                out[3] = 4'b0000;
                end
            4'b11: begin
                out[0] = 4'b0000;
                out[1] = 4'b1101;
                out[2] = 4'b1100;
                out[3] = 4'b1110;
                end            
        endcase
    end
    
    
    
endmodule
