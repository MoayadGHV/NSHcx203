module tb_shift_register;
    logic clk;
    logic reset_n;
    logic serial_in;
    logic en;
    logic [7:0] Q;
    logic serial_out;

    shift_register uut (
        .clk(clk),
        .reset_n(reset_n),
        .serial_in(serial_in),
        .serial_out(serial_out),
        .en(en),
        .Q(Q)
    );

    always #5 clk = ~clk; 

    initial begin
        clk = 0;
        reset_n = 0;
        serial_in = 0;
        en = 0;

        #10;
        reset_n = 1; 
        #10;

        en = 1;
        serial_in = 1; 
        $display("%d , %d", serial_in, serial_out);
        #10;
        serial_in = 0; 
                $display("%d , %d", serial_in, serial_out);
        #10;
        serial_in = 1; 
                $display("%d , %d", serial_in, serial_out);

        #10;
        serial_in = 1; 
                $display("%d , %d", serial_in, serial_out);

        #10;

        en = 0;
                $display("%d , %d", serial_in, serial_out);

        #10;

        en = 1;
        serial_in = 0; 
                $display("%d , %d", serial_in, serial_out);

        #10;

        $finish;
    end

//    initial begin
//        $monitor("Time: %0t | Reset: %b | Enable: %b | Serial_in: %b | Q: %b | Serial_out: %b", 
//                 $time, reset_n, en, serial_in, Q, serial_out);
//    end
endmodule
