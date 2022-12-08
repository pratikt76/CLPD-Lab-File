module PIPO2(y, clk, ldp, clrp, z);
    input clk, ldp, clrp; 
    input [15:0] z;
    output reg [15:0]y;
    always @(posedge clk)
        begin
            if(clrp) y<= 16'b0;
            else if(ldp) y<= z;
        end     
endmodule