`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2024 07:02:30 PM
// Design Name: 
// Module Name: tb_memory
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


module tb_memory;

logic [2:0] address;
logic readWrite, reset, clk;
logic [7:0] in, out;

memory #(8) mem(address, readWrite, reset, clk, in, out);

always #5 clk = ~clk;

initial begin

    clk = 0; reset = 0; readWrite = 0; in = 8'd0; #10;
    
    reset = 1; readWrite = 1; in = 8'd128; address = 3'b000; #10;
    in = 8'd64; address = 3'b111; #10;
    readWrite = 0; address = 3'b000; #10;
    readWrite = 0; address = 3'b111; #10;
    reset = 0; #10 in = 8'b0; reset = 1; #10;
    $finish;
end


endmodule
