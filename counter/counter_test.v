module counter_test;

reg rst,clk;
wire a;

counter uut(
.rst(rst),
.clk(clk),
.a(a)

);

initial begin
clk = 0;
forever #10
clk = ~clk;
end

initial begin 
rst = 1;
forever #200
rst = ~rst;
end

endmodule
