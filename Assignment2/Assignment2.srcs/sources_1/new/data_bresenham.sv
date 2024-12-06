module data_bresenham (
    input clk,
    input reset_n,
    input start_dataflow, 
    input start_clear,   
    input [5:0] r_in,             
    input [2:0] colorIn,     
    input [2:0] count,       
    output logic done,             
    output logic [7:0] x_out,      
    output logic [6:0] y_out,      
    output logic [2:0] colorOut,   
    output logic plot              
);

    logic [5:0] x;
    logic [5:0] y;
    logic [5:0] r;
    logic [7:0] xc = 80; 
    logic [6:0] yc = 60; 
    int d;

    // Dataflow logic
    always_ff @(posedge clk or negedge reset_n) begin
        if (~reset_n) begin
            x = 0;
            r = (r_in > 59) ? 59 : r_in;
            y = r;
            d = 0;
            plot = 0;
            colorOut = 0;
        end else if (start_dataflow) begin
            colorOut = colorIn;
            case (count)
                0:  begin 
                        x_out = xc + x; 
                        y_out = yc + y;
                    end
                1:  begin
                        x_out = xc - x;
                        y_out = yc + y; 
                    end
                2:  begin 
                        x_out = xc + x; 
                        y_out = yc - y; 
                    end
                3:  begin 
                        x_out = xc - x; 
                        y_out = yc - y; 
                    end
                4:  begin 
                        x_out = xc + y; 
                        y_out = yc + x; 
                    end
                5:  begin 
                        x_out = xc - y; 
                        y_out = yc + x; 
                    end
                6:  begin 
                        x_out = xc + y; 
                        y_out = yc - x; 
                    end
                7:  begin 
                        x_out = xc - y; 
                        y_out = yc - x; 
                    end
            endcase
            plot = 1;  

            if (count == 7) begin
                plot = 0;
                if (d < 0) begin
                    d = d + (4 * x) + 6;
                end else begin
                    d = d + 4 * (x - y) + 10;
                    y = y - 1;
                end
                x = x + 1;
            end

            if (x > y) begin
                done = 1;  // Done drawing the circle
            end
        end else if(start_clear) begin
            x_out = 0;
            y_out = 0;
            colorOut = 3'b111;
            plot = 1;
            if (y_out == 119) begin
                if (x_out == 159) begin
                    x_out = 0;
                end
                x_out = x_out + 1;
                y_out = 0;
            end    
            if ((x == 159) & (y == 119)) begin
                done = 1;
            end
            
            y_out = y_out + 1;

        end
    end

endmodule
