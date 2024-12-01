`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2024 12:51:19 PM
// Design Name: 
// Module Name: sequenceDetection
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


module sequenceDetection(
    input logic clk,
    input logic resetn,
    input logic in,
    output logic out,
    output logic [3:0] counter
    );

    logic [2:0] current_state, next_state;


    
    typedef enum logic [2:0] {
        A, B, C, D, E
    } state_t;
    

    
    always_ff @(posedge clk, negedge resetn) begin
        if (!resetn) begin
            current_state <= A;
            counter <= 0;
        end else begin
            current_state <= next_state;
            if (out) begin
                counter <= counter + 1;
            end  
        end
            
        
    
    end
    
    
    
    always_comb begin
        case (current_state)
            A: next_state = in ? B : A;
            B: next_state = in ? C : A;
            C: next_state = in ? C : D;
            D: next_state = in ? E : A;
            E: next_state = in ? C : A;
            default: next_state = A;
        endcase
        
        
            
    end
    
    
    
    
    always_comb begin
        if (current_state == E) begin
            out = 1'b1;
        end else begin
            out = 1'b0;
        end
    end
    
    
    
endmodule
