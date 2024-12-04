`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2024 10:23:10 PM
// Design Name: 
// Module Name: setpoint
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


module setpoint(
    input clk,
    input [8:0] xc,
    input [7:0] yc,
    input [5:0] x,
    input [5:0] y,
    output [8:0] xout,
    output [7:0] yout    
    );
    
    
    assign xout = xc + x;
    assign yout = yc + y;
        
            
            
        
    
endmodule
