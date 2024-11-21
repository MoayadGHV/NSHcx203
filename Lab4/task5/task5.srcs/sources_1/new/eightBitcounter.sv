`timescale 1ns / 1ps




module eightBitcounter(
    input [7:0] D,
    input clk,
    input reset,
    input ld,
    input en,
    output [7:0] count
    );
    
    
    
    logic [7:0] sub, y, wcount;
    
   logic wClk;
   assign wClk = en&clk;
    
    
    assign sub[0] = ~wcount[0];
    assign sub[1] = ~wcount[0]^wcount[1];
    assign sub[2] = &(~wcount[1:0])^wcount[2];
    assign sub[3] = &(~wcount[2:0])^wcount[3];
    assign sub[4] = &(~wcount[3:0])^wcount[4];
    assign sub[5] = &(~wcount[4:0])^wcount[5];
    assign sub[6] = &(~wcount[5:0])^wcount[6];    
    assign sub[7] = &(~wcount[6:0])^wcount[7];    
    
        
    assign y = ld ? D : sub;
    
    RDff FF1(.clk(wClk),.reset(reset),.D(y[0]),.Q(wcount[0]));
    RDff FF2(.clk(wClk),.reset(reset),.D(y[1]),.Q(wcount[1]));
    RDff FF3(.clk(wClk),.reset(reset),.D(y[2]),.Q(wcount[2]));
    RDff FF4(.clk(wClk),.reset(reset),.D(y[3]),.Q(wcount[3]));
    RDff FF5(.clk(wClk),.reset(reset),.D(y[4]),.Q(wcount[4]));
    RDff FF6(.clk(wClk),.reset(reset),.D(y[5]),.Q(wcount[5]));
    RDff FF7(.clk(wClk),.reset(reset),.D(y[6]),.Q(wcount[6]));
    RDff FF8(.clk(wClk),.reset(reset),.D(y[7]),.Q(wcount[7]));  
      
    assign count[7:0] = wcount[7:0];
    
endmodule
