`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2024 02:55:35 PM
// Design Name: 
// Module Name: tb_rDlatch
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


module tb_rDlatch;

logic D, clk, reset, Q, Qbar;


rDlatch rdl(.D(D), .clk(clk), .reset(reset), .Q(Q), .Qbar(Qbar));

always #5 clk = ~clk;

initial begin
    clk = 0;
    reset = 1;
    D = 1; #6; D = 0; #4; D = 1; #20;
    reset = 0; #5; reset = 1; #5;
    D = 0; #10;
    reset = 0; #5; reset = 1; #5;
    #5;
    $finish;
    
end
    


endmodule
