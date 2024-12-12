`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/12/2024 10:57:47 PM
// Design Name: 
// Module Name: tb_k2
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


module tb_k2;

logic clk, reset;
logic [9:0] regO, regAout, regBout;



top k2(clk, reset, regO, regAout, regBout);


always #5 clk = ~clk;


initial begin

   clk = 0; reset = 0; #10;
   reset = 1; #10;
   #100;
   
   $finish;
end

 
endmodule
