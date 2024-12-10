`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/10/2024 10:24:14 AM
// Design Name: 
// Module Name: tb_k2fibo
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


module tb_k2fibo;

logic clk, resetn;

core k2mp(
    .clk(clk),
    .resetn(resetn)
    );
    
    
always #5 clk = ~clk;

initial begin
    clk = 0; resetn = 0; #15;
    resetn = 1; #100;
    
    $finish;
end

endmodule
