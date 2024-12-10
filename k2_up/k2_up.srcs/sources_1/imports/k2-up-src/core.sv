// 1- all declarations are before assignments and usage


module core(
    input logic clk, 
    input logic resetn
);

// Instruction Fetching
logic [2:0] imm;
logic [3:0] pc;

// Instruction memory
logic [7:0] inst;

// Decoding instruction 
logic J;
logic C;
logic [1:0] D;
logic Sreg;
logic S;

// Generating enables for register O, A and B
logic enA, enB, enO;

assign J = inst[7];
assign C = inst[6];
assign D = inst[5:4]; // added "5:"
assign Sreg = inst[3];
assign S = inst[2];
assign imm = inst[2:0];

// registers 
logic [3:0] regIn;
logic [3:0] regA, regB, regO;

logic [3:0] AluOut;

// ALU
logic carry;

// jump logic 
logic pc_load;
assign pc_load = J | (C & carry);



// checked
counter_n_bit pc_inst( 
    .clk(clk),
    .resetn(resetn),
    .load_data({1'b0,imm}),
    .load(pc_load),
    .en(1'b1),   
    .count(pc)
);


// cheched
imem imem_inst( 
    .addr(pc),
    .inst(inst)
);



// checked
decoder decoder_inst( 
    .in(D),
    .out({enO,enB,enA}) // switched between enA and enO
);



// Mux for selecting inputs for register (regIn) // Checked
mux2x1 mux1(
    .in1(AluOut),
    .in2({1'b0, imm}),
    .sel(Sreg),
    .out(regIn)
);


// Register RA (regA) Checked
register reg_A(
    .clk(clk),
    .resetn(resetn),
    .wen(enA),
    .D(regIn),
    .Q(regA)
);

// Register RB (regB) Checked
register reg_B(
    .clk(clk),
    .resetn(resetn),
    .wen(enB), // added this missing line
    .D(regIn),
    .Q(regB)
);

// Register RO (regO) Checked
register reg_O(
    .clk(clk), // coreclk -> clk
    .resetn(resetn),
    .wen(enO),
    .D(regA),
    .Q(regO)
);



alu alu_inst(
    .clk(clk), // coreclk -> clk
    .opcode(S),
    .a(regA),
    .b(regB),
    .out(AluOut),
    .carry(carry)
);


endmodule : core