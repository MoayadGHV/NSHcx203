module seg_decoder#(
    parameter n = 2
)(
    input logic [n-1:0]in,
    output logic [(1 << n) - 1: 0]out
);

    assign out = (1 << in);

endmodule : seg_decoder
