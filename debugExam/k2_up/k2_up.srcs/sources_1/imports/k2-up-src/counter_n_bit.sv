module counter_n_bit#(
    parameter n = 4
)(
    input logic clk,
    input logic resetn,
    input logic load,
    input logic en,
    input logic [n - 1: 0] load_data,
    output logic [n - 1: 0] count
);

    always_ff @(posedge clk, negedge resetn) begin 
        if(~resetn) count <= 0; // added ~ to resetn
        else begin 
            if(load) count <= load_data; // added else from line 15
            else if(en) count <= count + 1; // removed else
        end
    end
endmodule : counter_n_bit