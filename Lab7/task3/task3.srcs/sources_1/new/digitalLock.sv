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
    output logic [3:0] status
    );
    
    
    typedef enum logic {
        A,
        B
    } state_f;
    
    
    state_f current_state, next_state;
    
    always_ff @(posedge clk, negedge reset) begin
        if (!reset) begin
            current_state <= A;
        end else begin
            current_state <= next_state;
            
        end
        
    end
        
    always_comb begin
        case(current_state)
            A: next_state = ((pass == 4'b1001) & open) ? B : A;
            B: next_state = close ? A : B;
            default: next_state = A;
        endcase
    end
    
    always_comb begin
        unlock = (current_state == B);
        if (unlock) begin
            status = 4'd0;
        end else begin
            status = 4'd12;
        end
    end
    
    
    
endmodule
