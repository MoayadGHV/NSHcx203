`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2024 01:39:26 PM
// Design Name: 
// Module Name: tb_main
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


module tb_main;


logic clk, reset;
logic [7:0] regO, regAout, regBout;

mainAddedInst #(8) m(clk, reset, regO, regAout, regBout);

always #5 clk = ~clk;

initial begin

    clk = 0; reset = 0; #5;
    reset = 1; m.m.dataFF[1] = 1;
     #120;
    
    $finish;
end

endmodule
