module test_d_ff;
reg a,clk,reset;
wire out;

d_ff uut(
	.a(a),
	.clk(clk),
	.out(out)
);

initial begin 
clk = 1;
forever #10
clk = ~clk;
end

initial begin 
reset = 0;
forever #500
reset = ~reset;
end

initial begin 
a= 1;
forever #55
a = ~a;
end

endmodule

