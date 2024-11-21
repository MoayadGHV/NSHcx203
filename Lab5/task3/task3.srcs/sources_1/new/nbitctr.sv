`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2024 02:04:01 PM
// Design Name: 
// Module Name: nbitctr
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


module nbitctr #(longint N = 10) (
    input logic clk,        
    input logic reset,
    output logic clk_out,
    output logic [$clog2(N)-1:0] count  
);

assign clk_out = count[$clog2(N)-1];
 
    always @(posedge clk or negedge reset) begin
        if (!reset)
            count <= 0; 
        else if (count == (2**$clog2(N-1)))
            count <= 0;
        else
            count <= count + 1; 
    end
   
    
    
endmodule
