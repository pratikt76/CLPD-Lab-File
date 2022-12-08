module counter(rst,clk,a);

input rst,clk;
output reg[3:0]a;

always@(posedge clk)
begin

if(rst == 1)
	a <= 0;
else
	a <= a + 1;

end

endmodule