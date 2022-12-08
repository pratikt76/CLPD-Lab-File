module mux_2_1(a,b,s,z);

input a,b,s;
output z;

assign z = s?b:a;

endmodule