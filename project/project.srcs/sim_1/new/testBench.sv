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

logic [7:0] a, b, s;
logic c, op;

ALU #(8) alu(a, b, op, s, c);


initial begin

    a = 8'b11111111;
    b = 8'b00000001;
    op = 0; #10;
    op = 1; #10;
    $finish;
    
    end
    


endmodule
