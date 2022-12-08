module d_ff(a,clk,out);
	input a,clk;
	output reg out;
	
always@(posedge clk)
begin
out <= a;
end

endmodule 
