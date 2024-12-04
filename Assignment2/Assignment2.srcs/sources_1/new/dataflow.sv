`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2024 02:46:38 PM
// Design Name: 
// Module Name: dataflow
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


module dataflow(
    input clk, reset_n,
    input en,
    input [5:0] r,
    input [8:0] xc,
    input [7:0] yc,
    output logic [2:0] count,
    output logic [7:0] xout,
    output logic [6:0] yout
    
    );
    
    logic [8:0] d;
    logic [5:0] x;
    logic [5:0] y;
    
    always @(posedge clk, negedge reset_n) begin
        if (~reset_n) begin
            x = 0;
            y = 0;
            count = 0;
        end else if(x <= y) begin
            xout = xc + x;
            yout = yc + y;
            if (en) begin
                x = 0;
                y = r;
                d = 3 - (2 * r);
                count = 0;
            end
            if (count == 7) begin
                x = x + 1;
                if ( d < 0 )begin
                    d = d + (4 * x) + 6;
                end else begin
                    d = d + (4 * (x - y)) + 10;
                end
                count = 0;
            end
        end
        
    end
        
    
    
endmodule
