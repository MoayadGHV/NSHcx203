`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2024 03:29:49 PM
// Design Name: 
// Module Name: digitalClock
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


module digitalLock(
    input clk, 
    input reset,
    input open,
    input close,
    input logic [3:0] pass,
    output logic unlock,
    output logic [3:0] status,
    output logic [3:0] counter,
    output logic [1:0] missCounter
    );
    logic rlclk;
    
    typedef enum logic [1:0] {
        A,
        B,
        C
    } state_f;
    
    
    state_f current_state, next_state;
    
    always_ff @(posedge clk, negedge reset) begin
        if (!reset) begin
            current_state <= A;
            counter = 4'd0;
            missCounter = 2'd0;
        end else begin
            current_state <= next_state;
            if (open & (pass != 4'b1001)) begin
                missCounter = missCounter + 1; 
            end
        end
        
    end
        
    always_comb begin
        case(current_state)
            A: next_state = ((pass == 4'b1001) & open) ? B : (missCounter > 2) ? C : A;
            B: next_state = close ? A : B;
            C: next_state = (counter > 10) ? A : C;
            default: next_state = A;
        endcase
        if (open & (pass != 4'b1001)) begin
                missCounter = missCounter + 1; 
        end
        
    end
    
    always_comb begin
        unlock = (current_state == B);
        if (unlock) begin
            status = 4'd0;
        end else begin
            status = 4'd12;
        end
        
    end
    
    
    
    always @(posedge rlclk) begin
    
        if (current_state == C) begin
            counter = counter + 1;
        end else begin
            counter = 4'd0;
        end
        
    end
    nbitctr #(100000000) rlCtr(.clk(clk), .reset(reset), .clk_out(rlclk));
    
    
    
endmodule
