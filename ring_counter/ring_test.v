module ring_test;
reg clk, clr;
wire q0, q1, q2, q3;

ring_counter uut(
	.clk(clk),
	.clr(clr),
	.q0(q0),
	.q1(q1),
	.q2(q2),
	.q3(q3)
);

initial begin
clk=0; 
forever #10 clk=~clk;
end

initial begin
clr=0;
forever #300 clr=~clr;
end

endmodule