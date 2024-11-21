`timescale 1ns / 1ps




module eightbitreg(
    input [7:0] D,
    input clk,
    input reset,
    input ld,
    output logic [7:0] Q
    );

genvar i;
generate 
    for(i= 0; i<n; i = i+1) begin :genloop
        RDff FF(.clk(clk),.reset(reset),.ld(ld),.D(D[i]),.Q(Q[i]));        
    end
endgenerate

    
    RDff FF1(.clk(clk),.reset(reset),.ld(ld),.D(D[0]),.Q(Q[0]));
    RDff FF2(.clk(clk),.reset(reset),.ld(ld),.D(D[1]),.Q(Q[1]));
    RDff FF3(.clk(clk),.reset(reset),.ld(ld),.D(D[2]),.Q(Q[2]));
    RDff FF4(.clk(clk),.reset(reset),.ld(ld),.D(D[3]),.Q(Q[3]));
    RDff FF5(.clk(clk),.reset(reset),.ld(ld),.D(D[4]),.Q(Q[4]));
    RDff FF6(.clk(clk),.reset(reset),.ld(ld),.D(D[5]),.Q(Q[5]));
    RDff FF7(.clk(clk),.reset(reset),.ld(ld),.D(D[6]),.Q(Q[6]));
    RDff FF8(.clk(clk),.reset(reset),.ld(ld),.D(D[7]),.Q(Q[7]));    

endmodule
