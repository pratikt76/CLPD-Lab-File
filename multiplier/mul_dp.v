module mul_dp(eqz, clk, lda, ldb, ldp, clrp, decb, datain);
    input clk, lda, ldb, ldp, clrp, decb;
    input [15:0] datain;
    wire [15:0]x, y, z, bout;
    output eqz;
    PIPO1(x, clk, lda, datain);
    PIPO2(y, clk, ldp, clrp, z);
    ADD(z, x, y);
    COUNT(bout, clk, ldb, decb, datain);
    COMP(eqz, bout);
endmodule