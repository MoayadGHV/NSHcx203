`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2024 05:04:00 PM
// Design Name: 
// Module Name: tb_fourbitregBehData
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


module tb_fourbitregBehData;


logic [3:0] D, Qdf, Qbardf, Qbeh, Qbarbeh;
logic clk, reset;

fourbitregdataflow fbrdf(.D(D), .clk(clk), .reset(reset), .Q(Qdf), .Qbar(Qbardf));
fourbitregbehave fbrb(.D(D), .clk(clk), .reset(reset), .Q(Qbeh), .Qbar(Qbarbeh));


always #5 clk = ~clk;

initial begin
    clk = 0;
    reset = 1; #1; reset = 0; #1; reset = 1; #3;
    D[0] = 0; D[1] = 1; D[2] = 0; D[3] = 1; #20;
    D[0] = 1; D[1] = 0; D[2] = 1; D[3] = 0; #20;
    reset = 0; #5; reset = 1; #5;
    D[0] = 0; D[1] = 0; D[2] = 0; D[3] = 0; #20;
    D[0] = 1; D[1] = 1; D[2] = 1; D[3] = 1; #20;
    reset = 0; #5; reset = 1; #5;
    $finish;
end


endmodule
