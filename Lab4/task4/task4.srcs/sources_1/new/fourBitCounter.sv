`timescale 1ns / 1ps

module fourBitCounter(
    input upDown,
    input [3:0] D,
    input clk,
    input reset,
    input ld,
//    input en,
    output [3:0] count
    );
    
    logic [3:0] Qbar;
    logic [3:0] Q;
    logic [3:0] Dtmp;
    logic [2:0] xortmp;
    logic [1:0] andtmp;
    /////////////////
    logic r_up_down1,r_up_down2,r_up_down3;
    ////////////////
    mux2to1 m0(D[0], Qbar[0], ld, Dtmp[0]);
    RDff RDff1(Dtmp[0], clk, reset, Q[0], Qbar[0]);
    assign r_up_down1 = upDown ? ~(Q[0]^Q[1]): (Q[1] ^ Q[1]);
//    xor xor0(xortmp[0], Q[1], Q[0]);
//    mux2to1 m1(D[1], xortmp[0], ld, Dtmp[1]);
    mux2to1 m1(D[1], r_up_down1, ld, Dtmp[1]);
    RDff RDff2(Dtmp[1], clk, reset, Q[1], Qbar[1]);
    assign r_up_down2 = upDown ? ~(Q[0] | Q[1]) ^ Q[2] : (Q[2] ^ (Q[1] & Q[0]));
//    and and0(andtmp[0], Q[1], Q[0]);
//    xor xor1(xortmp[1], Q[2], andtmp[0]);

    mux2to1 m2(D[2], xortmp[1], ld, Dtmp[2]);
    RDff RDff3(Dtmp[2], clk, reset, Q[2], Qbar[2]);
    assign r_up_down3 = upDown ? ~(Q[0] | Q[1] | Q[2]) ^ Q[3] : (Q[3] ^ (Q[1] & Q[0] & Q[2]));
//    and and1(andtmp[1], andtmp[0], Q[2]);
//    xor xor2(xortmp[2], Q[3], andtmp[1]);
    mux2to1 m3(D[3], xortmp[2], ld, Dtmp[3]);
    RDff RDff4(Dtmp[3], clk, reset, Q[3], Qbar[3]);
    
//    mux2to1 mo0(Q[0], Qbar[0], upDown, count[0]);
//    mux2to1 mo1(Q[1], Qbar[1], upDown, count[1]);
//    mux2to1 mo2(Q[2], Qbar[2], upDown, count[2]);
//    mux2to1 mo3(Q[3], Qbar[3], upDown, count[3]);
    
endmodule
