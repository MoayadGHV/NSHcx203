`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2024 03:43:47 PM
// Design Name: 
// Module Name: tb_incrROM
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


module tb_incrROM;

logic [3:0] in;
logic [3:0] out;


incrROM ir(in, out);


initial begin
    in = 4'b0000; #10;
    in = 4'b1000; #10;
    in = 4'b1010; #10;
    in = 4'b1111; #10;

$finish;
end




endmodule
