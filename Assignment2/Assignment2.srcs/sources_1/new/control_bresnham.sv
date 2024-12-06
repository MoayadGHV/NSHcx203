module control_bresenham (
    input clk,
    input reset_n,
    input start,
    input done_data,
    output logic done,         
    output logic [2:0] count,   
    output logic start_plot, 
    output logic start_clear
);

    typedef enum logic [1:0] {
        IDLE = 2'b00,
        PLOT = 2'b01,
        CLEAR = 2'b10
    } state_t;

    state_t current_state, next_state;





    // Clocking and resetting
    always_ff @(posedge clk or posedge reset_n) begin
        if (~reset_n) begin
            current_state = IDLE;
        end else begin
            current_state = next_state;
        end
    end

    // State control
    always_comb begin
        case (current_state) 
            IDLE: begin
                done = 0;
                start_plot = 0;
                start_clear = 0;
                count = 0;
                if (start) next_state = PLOT;
                else next_state = IDLE;
            end

            PLOT: begin
                if (done_data) begin 
                    next_state = IDLE; 
                    done = 1;
                end
                else begin 
                    next_state = PLOT;
                    start_plot = 1; 
                end
            end

            CLEAR: begin
                if (done_data) begin
                    done = 1;
                    next_state = IDLE;
                end else begin
                    next_state = CLEAR;
                    start_clear = 1;
                end
            end

            default: next_state = IDLE;
        endcase
    end

endmodule
