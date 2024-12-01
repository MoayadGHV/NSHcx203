`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2024 01:01:30 PM
// Design Name: 
// Module Name: tb_seqDet
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


module tb_seqDet;

logic clk, resetn, out, in;
logic [3:0] counter;


sequenceDetection seqDet(clk, resetn, in, out ,counter);

always #5 clk = ~clk;

initial begin

    clk = 0 ; resetn = 0; #10;
    resetn = 1; in = 1; #10;
    in = 1; #10;
    in = 1; #10;
    in = 0; #10;
    in = 1; #10;
    in = 1; #10;
    in = 0; #10;
    in = 1; #10;
    in = 1; #10;
    in = 0; #10;
    in = 1; #10; #10;
    resetn = 0; #10; resetn = 1;
    in = 1; #10;
    in = 1; #10;
    in = 0; #10;
    in = 1; #10;

    $finish;
end


endmodule
