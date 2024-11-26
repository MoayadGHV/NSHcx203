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
    logic [n-1:0]dataFF[7:0];
    
    
    always @(posedge clk, negedge reset) begin
        if(~reset)
        begin 
        foreach(dataFF[i]) dataFF[i]='b0;
        dataFF[1] = dataFF[1] | 1;
        end
        else if(readWrite) begin
            dataFF[address] = in;
        end
        
    end
    assign out = dataFF[address];

    
    
    
endmodule
