module adder_test;

reg a,b;
wire carry, sum;

adder uut(
.a(a),
.b(b),
.carry(carry),
.sum(sum)

);


initial begin 
a = 0;
forever #10
a = ~a;
end

initial begin
b = 1;
forever #20
b = ~b;
end

endmodule