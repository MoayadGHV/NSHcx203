`timescale 1ns / 1ps

module tb_fourbitadder;
    
    logic [3:0] a;
    logic [3:0] b;
    logic m, carryOut;
    logic [3:0] s;

    fourbitadder subandadd ( .a(a), .b(b), .m(m), .s(s), .carryOut(carryOut));

    initial begin

        a = 1; b = 2; m = 0;  
        #10;

        a = 4; b = 3; m = 1; 
        #10;

        a = 15; b = 1; m = 0; 
        #10;

        a = 2; b = 4; m = 1; 
        #10;

        a = 0; b = 0; m = 0;
        #10;

        a = 15; b = 0; m = 1; 
        #10;

        a = -4; b = -3; m = 0; 
        #10;

        a = 15; b = 15; m = 0; 
        #10;

        a = -8; b = 7; m = 1; 
        #10;

        a = 4; b = 3; m = 1; 
        #10;

        $finish;
    end

endmodule
