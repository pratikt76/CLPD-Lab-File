module test_binary_counter;

	wire [0:3]out;
	reg clk, reset;
	
	binary_counter DUT(.clk(clk), .reset(reset), .out(out));
	
	initial begin
	
		reset = 0; #10;
		reset = 1;
		
	end
	
	initial begin
	
		clk = 1;
		forever #10
		clk = ~clk;
		
		end
		
endmodule
