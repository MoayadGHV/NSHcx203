`timescale 1ns / 1ps

module even_odd_detector(
    input logic clk,
    input logic reset,
    input logic in_bit,
    output logic detected_1,
    output logic detected_2,
//    output logic LED_zeros,    
//    output logic LED_ones,

    output logic detected
    );
typedef enum logic [1:0] {
    S1 =2'b00,
    S2=2'b01,
    S3=2'b10,
    S4=2'b11
    
    } state_t;
    state_t current_state, next_state;
    
always_ff @(posedge clk or posedge reset) begin
    if (reset)
    current_state <= S1;
    else
    current_state <= next_state;
    end
        always_comb begin
        case (current_state)//IDLE: next_state = in_bit ? S1 : S3;
        S1: next_state = in_bit ? S2 : S3;
        S2: next_state = in_bit ? S1 : S4;
        S3: next_state = in_bit ? S4 : S1;
        S4: next_state = in_bit ? S3 : S2;
        default: next_state = S1;
        endcase
end
// Output logic
    always_comb begin
        detected_1 = (current_state == S1 | current_state == S2 );
        detected_2 = (current_state == S1 | current_state == S3 );

    end
//    always_comb begin
//    case (current_state)
//    always @(*) begin
       
//        LED_zeros = 0;
//        LED_ones = 0;

//        case (current_state)
//            ZERO_EVEN: begin
//                LED_zeros = 1; 
//                if (bit_in)
//                    next_state = ONE_ODD;
//                else
//                    next_state = ZERO_ODD;
//            end
//            ZERO_ODD: begin
//                if (bit_in)
//                    next_state = ONE_ODD;
//                else
//                    next_state = ZERO_EVEN;
//            end
//            ONE_EVEN: begin
//                LED_ones = 1; 
//                if (bit_in)
//                    next_state = ONE_ODD;
//                else
//                    next_state = ZERO_EVEN;
//            end
//            ONE_ODD: begin
//                if (bit_in)
//                    next_state = ONE_EVEN;
//                else
//                    next_state = ZERO_ODD;
//            end
//            default: next_state = ZERO_EVEN;
//        endcase
//    end

    
    endmodule
