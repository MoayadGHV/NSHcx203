`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2024 04:42:19 PM
// Design Name: 
// Module Name: fourbitregister
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


module fourbitregbehave(
    input logic [3:0] D,
    input clk,
    input reset,
    output logic [3:0] Q,
    output logic [3:0] Qbar

    );
    
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            Q = 4'b0000;
            Qbar = 4'b1111;      
        end else begin
            Q = D;              
            Qbar = ~D;           
        end
    end
    
    
    
    
    
endmodule
