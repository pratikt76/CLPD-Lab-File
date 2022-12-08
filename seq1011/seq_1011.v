module seq_1011(w,z,clk,reset);
input w, clk, reset ;
output reg z;
reg [2:1] y,Y;
parameter [2:1] A = 2'b00 , B = 2'b01 , C = 2'b11 , D = 2'b10 ;

always @ (w,y)
	case (y)
	A :if (w==1)
			begin
			Y <= B;
			z <= 0;
			end
		else
			begin
			Y <= A;
			z <= 0;
			end
	
	B :if (w==1)
			begin
			Y <= B;
			z <= 0;
			end
		else
			begin
			Y <= C;
			z <= 0;
			end
			
	C :if (w==1)
			begin
			Y <= D;
			z <= 0;
			end
		else
			begin
			Y <= A;
			z <= 0;
			end
			
	D :if (w==1)
			begin
			Y <= B;
			z <= 1;
			end
		else
			begin
			Y <= C;
			z <= 0;
			end
			
	endcase
	
always @ (posedge clk , negedge reset)
	if (!reset)
		y <= A;
	else
		y <= Y;
endmodule
