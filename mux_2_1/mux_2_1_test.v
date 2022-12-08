

module mux_test;

	reg a, b, s;
	wire z;
	
	mux2to1 uut(
		.a(a),
		.b(b),
		.s(s),
		.z(z)
	);
	
	initial begin
	a=1;
	b=0;
	s=0;
	forever #10
	s=~s;
	end
	endmodule



/*module mux_2_1_test;

reg a,b,s;
wire z;

mux_2_1 uut(
.a(a),
.b(b),
.s(s),
.z(z)
);

initial begin
a = 0;
forever #10
a = ~a;
end

initial begin 
b = 1;
forever #20
b = ~b
end

initial begin
s = 0;
forever #10
s = ~s;
end

initial begin
z = 1;
forever #20
z = ~z;
end

endmodule*/