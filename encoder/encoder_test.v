module encoder_test;

reg a,b,c,d;
wire z1,z2;

encoder uut(
.a(a),
.b(b),
.c(c),
.d(d),
.z1(z1),
.z2(z2)
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

initial begin
c = 0;
forever #10
c = ~c;
end

initial begin
d = 1;
forever #20
d = ~d;
end

endmodule