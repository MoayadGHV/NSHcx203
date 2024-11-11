`timescale 1ns / 1ps


module and4gate(
    input logic a,
    input logic b,
    input logic c,
    input logic d,
    output logic f
);


logic w1, w2;

andgate first(.a(a), .b(b), .f(w1));
andgate second(.a(c), .b(d), .f(w2));
andgate last(.a(w1), .b(w2), .f(f));

endmodule
