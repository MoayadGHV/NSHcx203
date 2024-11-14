`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2024 12:37:25 PM
// Design Name: 
// Module Name: tb_cipher
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


module tb_cipher;

logic [1:0] s;
logic [3:0] out[0:3];

cipher cph(.s(s), .out(out));


initial begin
    s = 4'b00; #10;
    s = 4'b01; #10;
    s = 4'b10; #10;
    s = 4'b11; #10;
    $finish;
    
end

endmodule
