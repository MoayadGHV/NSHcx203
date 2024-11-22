`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2024 10:14:11 AM
// Design Name: 
// Module Name: mux2to4
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


module mux2s #(int n = 8)(
    input [n-1:0] in1,
    input [2:0] in3, 
    input [n-1:0] in4,
    input [1:0] select,
    output logic [n-1: 0] outM
    );
    
    logic [n-1:0] in2;
    assign in2 = {n-1{1'd0}};
    
    always @(*) begin
        case(select)
            2'b00: outM = in1;
            2'b01: outM = in2;
            2'b10: outM = in3;
            2'b11: outM = in4;
        endcase
    end   
endmodule
