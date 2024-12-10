module decoder#(
    parameter n = 2
)(
    input logic [n-1:0]in,
    output logic [(1 << n) - 1: 0]out
);

    always @(*)
    begin 
        case(in)
        0: out = 4'b0001; // added 4'b
        1: out = 4'b0010; // added 4'b
        2: out = 4'b0100; // added 4'b and 0110 > 0100
        endcase
    end

endmodule : decoder // added "decoder"