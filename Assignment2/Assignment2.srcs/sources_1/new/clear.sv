`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2024 09:54:54 PM
// Design Name: 
// Module Name: clear
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


module clear(
    input clk,
    input reset_n,
    output logic [7:0] x,
    output logic [6:0] y,
    output logic plot,
    output logic [2:0] color
    );
    
    always @(posedge clk, negedge reset_n) begin
        if (~reset_n) begin
            x = 0;
            y = 0;
            color = 0;
            plot = 0;
        end else begin
            plot = 1;
            color = y[2:0];
            if (x == 159 | ~reset_n) begin
                x = 0;
                y = y + 1;
            end
            if (y == 119 | ~reset_n) begin
                y = 0;
            end
        end
        
    end            
                
            
          
    
    
endmodule
