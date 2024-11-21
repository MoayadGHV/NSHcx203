module multiplier(
    input [7:0] a,
    input [7:0] b,
    input clk,
    input reset,
    input ld,
    output [15:0] out
    );
    
    
    logic [7:0] aout, bout, compareb;
    logic [15:0] tmpout, addout;
    logic en;
    
    
    
    eightbitreg rega(.D(a), .clk(clk), .reset(reset), .ld(ld), .Q(aout));
    eightbitreg regb(.D(b), .clk(clk), .reset(reset), .ld(ld), .Q(bout));
    sixteenBitreg outreg(.D(addout), .clk(clk), .reset(reset), .ld(ld), .Q(tmpout));
    eightBitcounter cntr(.D(bout), .clk(clk), .reset(reset), .ld(ld), .en(en), .count(compareb));
//    Adder addr(.x(aout), .y(tmpout), .out(addout));
    assign addout = aout + tmpout;
    assign en = |(compareb);    
    assign out = addout; 
    
    
endmodule