module mux_test;
	reg a, b, c, d, s1, s2;
	wire z;
	
		initial begin
		a=0;
		b=1;
		c=0;
		d=1;
		end
	initial begin
		s1=0;
		forever #10
		s1=~s1;
	end
	
	initial begin
		s2=1;
		forever #20
		s2=~s2;
	end
		
endmodule
	
	