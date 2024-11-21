`timescale 1ns / 1ps




module sixteenBitreg(
    input [15:0] D,
    input clk,
    input reset,
    input ld,
    output logic [15:0] Q
    );


    
    RDff FF1(.clk(clk),.reset(reset),.D(D[0]),.Q(Q[0]));
    RDff FF2(.clk(clk),.reset(reset),.D(D[1]),.Q(Q[1]));
    RDff FF3(.clk(clk),.reset(reset),.D(D[2]),.Q(Q[2]));
    RDff FF4(.clk(clk),.reset(reset),.D(D[3]),.Q(Q[3]));
    RDff FF5(.clk(clk),.reset(reset),.D(D[4]),.Q(Q[4]));
    RDff FF6(.clk(clk),.reset(reset),.D(D[5]),.Q(Q[5]));
    RDff FF7(.clk(clk),.reset(reset),.D(D[6]),.Q(Q[6]));
    RDff FF8(.clk(clk),.reset(reset),.D(D[7]),.Q(Q[7]));    
    RDff FF9(.clk(clk),.reset(reset),.D(D[8]),.Q(Q[8]));
    RDff FF10(.clk(clk),.reset(reset),.D(D[9]),.Q(Q[9]));
    RDff FF11(.clk(clk),.reset(reset),.D(D[10]),.Q(Q[10]));
    RDff FF12(.clk(clk),.reset(reset),.D(D[11]),.Q(Q[11]));
    RDff FF13(.clk(clk),.reset(reset),.D(D[12]),.Q(Q[12]));
    RDff FF14(.clk(clk),.reset(reset),.D(D[13]),.Q(Q[13]));
    RDff FF15(.clk(clk),.reset(reset),.D(D[14]),.Q(Q[14]));
    RDff FF16(.clk(clk),.reset(reset),.D(D[15]),.Q(Q[15]));   

endmodule
