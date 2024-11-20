module shift_register (
                    input clk, input reset_n,
                    input serial_in, output serial_out,
                    input en,
                    output logic [7:0]Q

                    );
always@(posedge clk or negedge reset_n)
begin
    if(!reset_n)    Q <= 8'b0000;
    else if (en)
    
    begin
        Q[0] <= Q[1];
        Q[1] <= Q[2];
        Q[2] <= Q[3];
        Q[3] <= Q[4];
        Q[4] <= Q[5];
        Q[5] <= Q[6];
        Q[6] <= Q[7];
        Q[7] <= serial_in;    
    end
end
endmodule