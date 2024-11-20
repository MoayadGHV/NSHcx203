`timescale 1ns / 1ps




module fourBitCounter(
    input upDown,
    input [3:0] D,
    input clk,
    input reset,
    input ld,
    output [3:0] count
    );
    
    logic [3:0]add,sub,x,y,wcount;
    
    
    assign add[0] = ~wcount[0];
    assign add[1] = wcount[0]^wcount[1];
    assign add[2] = &(wcount[1:0])^wcount[2];
    assign add[3] = &(wcount[2:0])^wcount[3];
    assign sub[0] = ~wcount[0];
    assign sub[1] = ~wcount[0]^wcount[1];
    assign sub[2] = &(~wcount[1:0])^wcount[2];
    assign sub[3] = &(~wcount[2:0])^wcount[3];
    
    assign x = upDown ? sub:add;
    
    assign y = ld ? D:x;
    
    RDff FF1(.clk(clk),.reset(reset),.D(y[0]),.Q(wcount[0]));
    RDff FF2(.clk(clk),.reset(reset),.D(y[1]),.Q(wcount[1]));
    RDff FF3(.clk(clk),.reset(reset),.D(y[2]),.Q(wcount[2]));
    RDff FF4(.clk(clk),.reset(reset),.D(y[3]),.Q(wcount[3]));
    assign count = wcount;
endmodule
