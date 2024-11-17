`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2024 04:42:19 PM
// Design Name: 
// Module Name: fourbitregister
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


module fourbitregdataflow(
    input logic [3:0] D,
    input clk,
    input reset,
    output logic [3:0] Q,
    output logic [3:0] Qbar

    );
    
    
    RDff RDff1(D[0], clk, reset, Q[0], Qbar[0]);
    RDff RDff2(D[1], clk, reset, Q[1], Qbar[1]);
    RDff RDff3(D[2], clk, reset, Q[2], Qbar[2]);
    RDff RDff4(D[3], clk, reset, Q[3], Qbar[3]);
    
    
    
endmodule
