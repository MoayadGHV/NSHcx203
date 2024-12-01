`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2024 03:50:06 PM
// Design Name: 
// Module Name: tb_digitalLock
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


module tb_digitalLock;

logic clk, reset, open, close, unlock;
logic [3:0] pass, status;


digitalLock dl(clk, reset, open, close, pass, unlock, status);

always #5 clk = ~clk;

initial begin

    clk = 0; reset = 0; open = 0; close = 0; pass = 4'b0000; #10;
    reset = 1; pass = 1010; open = 1; #10;
    open = 0; #10  
    pass = 1001; open = 1; #10;
    open = 0; #20
    close = 1; #10;
    close = 0; #10;
    reset = 0; #3; reset = 1; #2;
    $finish;
    
end

endmodule
