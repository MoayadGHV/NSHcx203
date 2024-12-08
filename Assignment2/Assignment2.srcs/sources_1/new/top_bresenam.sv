`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2024 12:28:25 PM
// Design Name: 
// Module Name: fourbitregBehData
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


module top_bresenham(
    input logic CLK100MHZ,
    input logic [15:0] SW,
    input logic CPU_RESETN,
    input logic BTNC,
    output wire [3:0] VGA_R,               // VGA red channel
    output wire [3:0] VGA_G,               // VGA green channel
    output wire [3:0] VGA_B,               // VGA blue channel
    output wire VGA_HS,                    // Horizontal sync
    output wire VGA_VS,
    output logic [15:0] LED  
    );
    
    
    logic [7:0] x_out;
    logic [6:0] y_out;
    logic [2:0] colorIn = SW[2:0];
    logic [5:0] r_in = SW[7:3];
    logic [2:0] colorOut;
    logic dataDone, startPlot, startClear;
    logic plot;
    reg count;
    // Seven segments Controller
    wire [6:0] Seg;
    wire [3:0] digits[0:7]; 
    assign LED[15] = 1'b1;;
    
    control_bresenham DUTctrl(
            .clk(CLK100MHZ), 
            .reset_n(CPU_RESETN), 
            .startPlotting(BTNC), 
            .done_data(dataDone), 
            .done(LED[0]), 
            .plotOut(startPlot), 
            .clearOut(startClear));
            
    data_bresenham DUTdata(
            .clk(CLK100MHZ), 
            .reset_n(CPU_RESETN), 
            .start_dataflow(startPlot), 
            .start_clear(startClear), 
            .r_in(r_in), .colorIn(colorIn), 
            .done(dataDone), 
            .x_out(x_out), 
            .y_out(y_out), 
            .colorOut(colorOut), 
            .plot(plot));
            
            
            
    vga_core VGA(
            .clk(CLK100MHZ), 
            .resetn(CPU_RESETN), 
            .x(x_out), 
            .y(y_out), 
            .color(colorOut), 
            .plot(plot), 
            .VGA_R(VGA_R), 
            .VGA_G(VGA_G), 
            .VGA_B(VGA_B), 
            .VGA_HS(VGA_HS), 
            .VGA_VS(VGA_VS));
        
    
endmodule