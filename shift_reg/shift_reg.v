module shift_reg(a, clk, z);
	input clk, a;
	reg b, c, d;
	output reg z;
	
	always @(posedge clk)
	begin
		z=d;
		d=c;
		c=b;
		b=a;
	end
endmodule