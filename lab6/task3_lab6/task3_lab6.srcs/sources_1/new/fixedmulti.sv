`timescale 1ns / 1ps

module fixedmulti #(parameter n1=8 ,n2=8 , m1=8, m2=8 )(
    A, 
    B, 
    S  
    );
    input  logic [n1+m1-1:0] A;
    input  logic [n2+m2-1:0] B;
    output logic [(n1+n2)+(m1+m2)-1:0]  S;


    assign S= A * B;
endmodule
