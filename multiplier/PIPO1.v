module PIPO1(x,clk,lda,datain);
	input clk,lda;
	input [15:0] datain;
	output reg [15:0] x;
	always @(posedge clk)
		if(lda) x<=datain;
endmodule