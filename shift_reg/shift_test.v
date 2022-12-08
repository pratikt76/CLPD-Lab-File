module shift_test;
	reg clk, a;
	wire z;
	
shift_reg uut(
	.a(a),
	.clk(clk),
	.z(z)
);

initial begin
	clk = 1;
	forever #10 clk=~clk;
end

initial begin
	a = 0;
	forever #20 a=~a;
end

endmodule