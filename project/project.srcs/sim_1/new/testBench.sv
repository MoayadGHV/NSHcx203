`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2024 08:54:45 AM
// Design Name: 
// Module Name: testBench
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


module testBench;

logic [7:0] a, b, s, sel;
logic c;

ALU #(8) alu(a, b, sel, s, c);


initial begin

    a = 8'b00000001;
    b = 8'b00000001;
    sel = 8'b11111111;
    
    end
    


endmodule
