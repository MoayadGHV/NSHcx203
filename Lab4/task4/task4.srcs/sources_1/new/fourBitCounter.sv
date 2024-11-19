`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2024 01:48:00 PM
// Design Name: 
// Module Name: fourBitCounter
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


module fourBitCounter(
    input upDown,
    input [3:0] D,
    input clk,
    input reset,
    input ld,
    output [3:0] Q
    );
    logic [3:0] Dtmp;
    logic [3:0] Qbar;
    logic [3:0] muxout;
    logic tmp1, tmp2, tmp3, tmp4, tmp5, tmp6;
    
    not G1(Dtmp[0], Q[0]);
    mux2to1 MUX0(D[0], Dtmp[0], ld, muxout[0]);
    
    xor G2(tmp1, Q[0], upDown);   
    xor G3(Dtmp[1], Q[1], tmp1);  
    mux2to1 MUX1(D[1], Dtmp[1], ld, muxout[1]);
      
    and G4(tmp2, Q[1], Q[0]);    
    xor G5(tmp3, tmp2, upDown);  
    xor G6(Dtmp[2], Q[2], tmp3);    
    mux2to1 MUX2(D[2], Dtmp[2], ld, muxout[2]);

    and G7(tmp4, Q[2], Q[1]);    
    and G8(tmp5, tmp4, Q[0]);    
    xor G9(tmp6, tmp5, upDown);  
    xor G10(Dtmp[3], Q[3], tmp6);  
    mux2to1 MUX3(D[3], Dtmp[3], ld, muxout[3]);
    
    RDff FF0 (muxout[0], clk, reset, Q[0], Qbar[0]);
    RDff FF1 (muxout[1], clk, reset, Q[1], Qbar[1]);
    RDff FF2 (muxout[2], clk, reset, Q[2], Qbar[2]);
    RDff FF3 (muxout[3], clk, reset, Q[3], Qbar[3]);
    
    
endmodule
