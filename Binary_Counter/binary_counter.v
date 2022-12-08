module binary_counter(clk, reset, out);

	input clk, reset;
	output reg [0:3]out;
	
	always @(posedge clk, negedge reset)
	
		begin
		
		if (!reset) out = 4'b0000;
		
		else out = out + 1;
		
	end
	
endmodule
