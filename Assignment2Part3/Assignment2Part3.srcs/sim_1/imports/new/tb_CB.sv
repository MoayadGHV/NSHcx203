`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2024 11:02:52 AM
// Design Name: 
// Module Name: tb_CB
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


module tb_CB;

    logic clk, reset_n, circle, plot,done, clear;
    logic [5:0] r_in;
    logic [2:0] colorIn;
    logic [7:0] x_out;
    logic [6:0] y_out;
    logic [2:0] colorOut;
    logic startPlot, startClear, dataDone;
    
    control_bresenham DUTctrl(clk, reset_n, circle, clear, dataDone, done, startPlot, startClear);
    data_bresenham DUTdata(clk, reset_n, startPlot, startClear, r_in, colorIn, dataDone, x_out, y_out, colorOut, plot);
    
    
    always #5 clk = ~clk;
    
    initial begin
        clk = 0; reset_n = 0; circle = 0; r_in = 10; colorIn = 0; clear = 0; #1;
        reset_n = 1; circle = 1; colorIn = 3'd001; r_in = 10; #9; circle = 0;
        for (int i = 1; i < 4 ; i++) begin
            r_in = r_in * i;
            #20;
            while (done == 0) begin
                #10;
            end
            colorIn = colorIn << 1;
        end
        $finish;
    end
    
endmodule
