`timescale 1ns / 1ps


module tb_andgate;

logic a, b, f;


and4gate a1(.a(a), .b(b), .f(f));




initial begin

    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;
    

$finish;
end

endmodule