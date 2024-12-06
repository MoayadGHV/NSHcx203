`timescale 1ns / 1ps


module comparetor #(parameter n = 8)(
    input logic [n-1: 0] x,y,
    output logic signal
);


    always@(*) begin 
        if (x == y) 
            signal = 1;
            
        else 
            signal = 0; 
    
    end 

endmodule
