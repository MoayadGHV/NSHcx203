`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2024 09:35:17 AM
// Design Name: 
// Module Name: counter
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


module counter(
    input clk,
    output logic [23:0] count
    );
    
    always @(posedge clk) begin   
        count [23:20] = (count [19:16] == 4'b0011 && count [15:12] == 4'b0101 && count [11:8] == 4'b1001 && count [7:4] == 4'b0101 && count [3:0] == 4'b1001) ? count [23:20] + 4'b1 : count[23:20];
        count [23:20] = (count [23:20] == 4'b0011) ? 0 : count[23:20]; 
        
        
        count [19:16] = (count [15:12] == 4'b0101 && count [11:8] == 4'b1001 && count [7:4] == 4'b0101 && count [3:0] == 4'b1001) ? count [19:16] + 4'b1 : count[11:8];
        count [19:16] = (count [19:16] == 4'b1010) ? 0 : count [19:16];
    
    
        count [15:12] = (count [11:8] == 4'b1001 && count [7:4] == 4'b0101 && count [3:0] == 4'b1001) ? count [15:12] + 4'b1 : count[15:12];
        count [15:12] = (count [15:12] == 4'b0110) ? 0 : count[15:12]; 
        
        
        count [11:8] = (count [7:4] == 4'b0101 && count [3:0] == 4'b1001) ? count [11:8] + 4'b1 : count[11:8];
        count [11:8] = (count [11:8] == 4'b1010) ? 0 : count[11:8]; 
        
        
        count [7:4] = (count [3:0] == 4'b1001) ? count [7:4] + 4'b1 : count[7:4];
        count [7:4] = (count [7:4] == 4'b0110) ? 0 : count[7:4];
        
        
        count [3:0] = (count [3:0] == 4'b1001) ? 0 : count[3:0] + 4'b1;
    end
    
    
    
    
endmodule
