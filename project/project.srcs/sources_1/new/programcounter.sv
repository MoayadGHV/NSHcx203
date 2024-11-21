`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2024 11:58:30 AM
// Design Name: 
// Module Name: programcounter
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


module programcounter #(int n = 8)(
    input [n-1:0] in,
    input en,
    input reset,
    input clk,
    output logic [n-1:0] out
    );

    always @(posedge clk, negedge reset) begin
    if (!reset) 
        out <= {n{1'b0}};
    else if (en) 
        out <= in;
    else
        out <= in + 1;
    end

    
    
endmodule
