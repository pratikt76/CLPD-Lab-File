module d_ff(d,clk,z,preset,clear);
input d,clk,preset,clear;
output reg z;
always@(posedge clk)
begin
if(clear==0)
z<=0;
else if(preset==0)
z<=1;
else
z<=d;
end
endmodule