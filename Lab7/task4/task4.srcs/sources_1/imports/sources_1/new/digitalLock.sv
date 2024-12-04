module digitalLock(
    input clk, 
    input reset,
    input open,
    input close,
    input edit,
    input logic [3:0] pass,
//    output logic unlock,
    output logic [3:0] status
//    output logic [3:0] counter,
//    output logic [1:0] missCounter
    );
    logic rlclk, diffRst, diffRstM, CNTRST, CNTRSTM, editEn;
    logic [3:0] counter, pwd;
    logic [1:0] missCounter, current_state, next_state;
    
    localparam C=2'b00,O=2'b01,F=2'b10, E=2'b11;
    
    assign diffRst = diffRstM & reset;
    assign CNTRST = CNTRSTM & reset;    

            
    always_ff @(posedge clk or negedge reset) begin
        if (!reset) begin
            current_state <= C;
//            pwd = 4'b1001;
        end else begin
            current_state <= next_state;
        end
    end
    

    always_ff @(posedge open, negedge diffRst) begin
            if (~diffRst)
            missCounter <= 0;
            else 
            missCounter <= missCounter +1; 
           
     end
       

    always_ff @(posedge rlclk, negedge CNTRST) begin
        if (~CNTRST) begin
            counter <= 0;
        end else begin
            counter <= counter +1;
        end
        
    end    
    
//    always_comb begin
//        if (pwdChange) 
//            pwd = pass;
//    end
    
    always_ff @(posedge edit) begin
        editEn = ~editEn;
    end
    

    
    always_comb begin
        case (current_state)
            C: begin
                next_state = open ? (pass == pwd ? O:(missCounter >2 ?F:C)):C;
                diffRstM = 1;
                CNTRSTM = 0;
                end
            O: begin
                next_state = close ? C : (editEn) ? E : O;
                diffRstM = 0;
                CNTRSTM = 0;
                end
            F: begin
                next_state = (counter > 10) ? C : F;
                diffRstM = 0;
                CNTRSTM = 1;
                end
            E: begin
                next_state = (editEn) ? E : O;
                diffRstM = 0;
                CNTRSTM = 0;
                pwd = pass;
                end
        endcase
    end

    always_comb begin
        status = (current_state == O) ? 4'd0 : (current_state == F) ? 4'd15 : (current_state == C) ? 4'd12 : 4'd14;
    end

    nbitctr #(100000000) rlCtr(.clk(clk), .reset(reset), .clk_out(rlclk));

endmodule