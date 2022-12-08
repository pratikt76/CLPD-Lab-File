module vending_test;

	reg a, b, c, clk, reset;
	wire change, bottle;
	
	
	vending_machine uut(
		.a(a),
		.b(b),
		.c(c),
		.clk(clk),
		.reset(reset),
		.change(change),
		.bottle(bottle));
		


	always #10 clk = ~clk;
	
	initial begin
	clk <= 0;
	reset <= 0;
	
	#20 reset <= 1;
	#80 reset <= 0;
	#50 reset <= 1;
	
	end
	

	
	initial begin
		a = 1;
		forever #30
		a = ~a;
		
	end
	
	initial begin
		b = 1;
		forever #30
		b = ~b;
		
	end
	
	initial begin
		c = 1;
		forever #30
		c = ~c;
		
	end

endmodule 	