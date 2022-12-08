module ring_counter(clk,clr,q0,q1,q2,q3);
input clk,clr;
output q0,q1,q2,q3;
wire GND;

d_ff d1(q3,clk,q0,clr,GND);
d_ff d2(q0,clk,q1,GND,clr);
d_ff d3(q1,clk,q2,GND,clr);
d_ff d4(q2,clk,q3,GND,clr);

endmodule