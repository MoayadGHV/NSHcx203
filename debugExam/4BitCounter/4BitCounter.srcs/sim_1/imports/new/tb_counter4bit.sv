`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/10/2024 08:50:01 AM
// Design Name: 
// Module Name: tb_counter4bit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_counter4bit;


logic load, clk, reset_n;
logic [3:0] load_data, count;


counter_4bit cntr2( .clk(clk),
                    .reset_n(reset_n), 
                    .load(load),
                    .load_data(load_data),
                    .count(count)
                   );
                    
always #5 clk = ~clk;

initial begin
    clk = 0; reset_n = 0; load = 0; load_data = 4'b0000; #10; //Zero all
    
    reset_n = 1; #40; // start counting from 0 until 4
    
    load = 1; load_data = 4'b1000; #10; //jump to 8
    
    load = 0; #40; // count until 12
    $finish;
end
        
                    
                    
endmodule
