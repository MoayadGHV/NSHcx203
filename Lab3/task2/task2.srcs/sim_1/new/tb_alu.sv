`timescale 1ns / 1ps


module tb_alu;

    logic [3:0] a;
    logic [3:0] b;
    logic s0;
    logic s1;
    logic [3:0] out;

alu al(.a(a), .b(b), .s0(s0), .s1(s1), .out(out));

initial begin
    
    a = 4'b0111; b = 4'b0001; s0 = 0; s1 = 0; #10;
    a = 4'b0111; b = 4'b0001; s0 = 0; s1 = 1; #10;
    a = 4'b0111; b = 4'b0001; s0 = 1; s1 = 0; #10;
    a = 4'b0111; b = 4'b0001; s0 = 1; s1 = 1; #10;
    $finish;
end
    
endmodule
