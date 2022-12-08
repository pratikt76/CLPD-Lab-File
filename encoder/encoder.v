module encoder(a,b,c,d,z1,z2);

input a,b,c,d;
output z1,z2;

or(z1,a,b);
or(z2,c,d);

endmodule