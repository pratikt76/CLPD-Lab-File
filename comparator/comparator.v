module comparator(a,b,out);
input a,b;
output reg out;

always@(*)
begin
if(a>b)
	out = 0;
else
	out = 1;

end
endmodule

