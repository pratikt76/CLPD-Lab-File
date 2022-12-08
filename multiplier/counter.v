module COUNT(bout, clk, ldb, decb, datain);
    input clk, ldb, decb;
    input [15:0] datain;
    output reg [15:0]bout;
    always @(posedge clk)
        begin
            if(ldb) bout <= datain;
            else if(decb)
                bout <= bout -1;
        end
endmodule