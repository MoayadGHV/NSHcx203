`timescale 1ns / 1ps


module tb_fixedadder;
    localparam n1=3;
    localparam m1=3;
    localparam n2=1;
    localparam m2=1;

    logic [n1+m1-1:0] A;                           
    logic [n2+m2-1:0] B;                           
    logic [(n1>n2 ? n1 :n2 ) + (m1>m2 ? m1:m2)-1:0]  S;   
fixedadder #(.n1(n1),.n2(n2),.m1(m1),.m2(m2)) ad1(.A(A), .B(B), .S(S));


    initial begin 
    
    A = 'b001_111;
    B = 'b1_0;
    #5
//    A = 'b11101010;
//    B = 'b11100110;
//    #5            
//    A = 'b11101010;
//    B = 'b11100110; 
    
    $finish;
    end
    endmodule
