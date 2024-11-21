module Adder(
    input logic [8:0] x,
    input logic [15:0] y,
    output logic [15:0] out
    );
    
    
    assign out = x + y; 
    
    
endmodule
