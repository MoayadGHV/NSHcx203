module control_bresenham (
    input clk,
    input reset_n,
    input startPlotting,
    input startClearing,
    input done_data,
    output logic done,         
    output logic plotOut, 
    output logic clearOut
);

    typedef enum logic [1:0] {
        IDLE = 2'b00,
        PLOT = 2'b01,
        CLEAR = 2'b10
    } state_t;

    state_t current_state, next_state;





    // Clocking and resetting
    always_ff @(posedge clk or negedge reset_n) begin
        if (~reset_n) begin
            current_state <= IDLE;
          //  done = 0;   //
        end else begin
            current_state <= next_state;
        end
    end
    
    
    always_comb begin
        case (current_state) 
            IDLE: begin
              
                if (startPlotting) next_state = PLOT;
                else if (startClearing) next_state = CLEAR;
                else next_state = IDLE;
            end

            PLOT: begin
                if (done_data) begin 
                    next_state = IDLE; 
                end
                else begin 
                    next_state = PLOT;

                end
            end

            CLEAR: begin
                if (done_data) begin
                    next_state = IDLE;
                end else begin
                    next_state = CLEAR;
 

                end
            end

            default: next_state = IDLE;
        endcase
    end
    

    // State control
    always_comb begin
        case (current_state) 
            IDLE: begin
                plotOut = 0;
                clearOut = 0;
                if (startPlotting) next_state = PLOT;
                else if (startClearing) next_state = CLEAR;
                else next_state = IDLE;
            end

            PLOT: begin
                if (done_data) begin 
                    next_state = IDLE; 
                    done = 1;
                end
                else begin 
                    next_state = PLOT;
                    plotOut = 1; 
                    clearOut = 0;
                    done = 0;
                end
            end

            CLEAR: begin
                if (done_data) begin
                    done = 1;
                    next_state = IDLE;
                end else begin
                    next_state = CLEAR;
                    clearOut = 1;
                    plotOut = 0;
                    done = 0;

                end
            end

            default: next_state = IDLE;
        endcase
    end

endmodule
