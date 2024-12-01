`timescale 1ns / 1ps



module tb_even_odd_detector;
    reg clk, reset, bit_in;
    logic detected_2, detected_1;

    even_odd_detector dut (
        .clk(clk),
        .reset(reset),
        .in_bit(bit_in),
        .detected_1(detected_1),
        .detected_2(detected_2)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0; reset = 1; bit_in = 0;
        #10 reset = 0;

        #10 bit_in = 0; 
        #10 bit_in = 1; 
        #10 bit_in = 0; 
        #10 bit_in = 1; 
        #10 bit_in = 1; 
        #10 bit_in = 0; 

        #20
        
         $finish;
    end
endmodule



