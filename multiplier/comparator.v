module COMP(eqz, bout);
    input [15:0] bout;
    output eqz;
    assign eqz = (bout==0);
endmodule