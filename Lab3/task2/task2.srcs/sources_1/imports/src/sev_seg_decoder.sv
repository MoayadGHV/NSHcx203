module seven_seg_decoder(
    input  wire [3:0] bin,      // 4-bit binary input (0–F)
    output reg  [6:0] seg       // 7-bit output for segments a-g
);

// Add your code here -----------------------------------
    logic A = bin[3];
    logic B = bin[2];
    logic C = bin[1];
    logic D = bin[0];
    
    assign seg[0] = (~A & B & ~C & ~D) | (~A & ~B & ~C & D) | (A & B & ~C & D) | (A & ~B & C & D);
    assign seg[1] = (A & C & D) | (A & B & D) | (B & C & ~D) | (~A & B & ~C & D);
    assign seg[2] = (~A & ~B & C & ~D) | (A & B & C) | (A & B & ~D);
    assign seg[3] = (B & C & D) | (~A & ~B & ~C & D) | (~A & B & ~C & ~D) | (A & ~B & C & ~D);
    assign seg[4] = (~A & D) | (~B & ~C & D) | (~A & B & ~C);
    assign seg[5] = (~A & C & D) | (~A & ~B & D) | (~A & ~B & C) | (A & B & ~C & D);
    assign seg[6] = (~A & ~B & ~C) | (~A & B & C & D) | (A & B & ~C & ~D);


// Add your code here -----------------------------------

endmodule