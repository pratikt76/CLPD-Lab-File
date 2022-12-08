module mux4to1(a, b, c, d, s1, s2, z);
	input a, b, c, d, s1, s2;
	output z;
	
		assign z = s2 ? (s1 ? d : c) : (s1 ? b : a);

			
endmodule