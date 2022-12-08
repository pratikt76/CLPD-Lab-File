module comparator_test;

reg a,b;
wire out;

comparator uut(
.a(a),
.b(b),
.out(out)
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