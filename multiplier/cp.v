module mul_control(done, lda, ldb, ldp, clrp, decb, clk, start, eqz, datain);
    input clk, start, eqz;
    input[15:0] datain;
    output reg lda, ldb, ldp, clrp, decb, done; 
    reg [2:0]state;
    parameter S0=000, S1=001, S2=010, S3=011, S4=100;
    always @(posedge clk)
        begin
            case(state)
                S0 : if(start) state<= S1;  
                S1 : state<=S2;
                S2 : state<= S3;
                S3 : begin if(eqz) state<=S4; else state<=S3; end 
                S4 : state<= S4;
                default : state<= S0; 
            endcase
        end 
    always @(state)
        begin
           case(state)
               S0: begin lda = 0; ldb = 0; ldp = 0; clrp = 0; decb = 0; done = 0; end
               S1: begin lda = 1; ldb = 0; ldp = 0; clrp = 0; decb = 0; done = 0; end
               S2: begin lda = 0; ldb = 1; ldp = 0; clrp = 0; decb = 0; done = 0; end
               S3: begin lda = 0; ldb = 0; ldp = 1; clrp =0; decb = 1; done = 0; end
               S4: begin lda = 0; ldb = 0; ldp = 0; clrp = 0; decb = 0; done = 1; end
               default : begin lda = 0; ldb = 0; ldp = 0; clrp = 0; decb = 0; done = 0; end 
           endcase
        end
endmodule
