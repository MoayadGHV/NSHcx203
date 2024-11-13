`timescale 1ns / 1ps

module incrROM(
    input logic [3:0] in,
    output logic [3:0] out
    );
    
    
always @(*) begin

    if (in == 4'b1111)
        out = 4'b0000;
    else
        out = in + 1;
end



endmodule
