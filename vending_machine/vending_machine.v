module vending_machine(a, b, c, clk, reset, change, bottle);

	input a, b, c, clk, reset;
	output reg change, bottle;
	
	reg [3:1] Y, y;
	
	parameter[3:1] A = 3'b000, B = 3'b001, C = 3'b010, D = 3'b011, E = 3'b101, F = 3'b110;
	parameter[3:1] c0 = 3'b000, c1 = 3'b001, c2 = 3'b010, c3 = 3'b011, c4 = 3'b111;
	
	always @(posedge clk, negedge reset)
		begin 
			if(~reset)
				y <= A;
			else 
				y <= Y;
		end
		
		
	always @(a, b, c, y)
	
		begin 
			case(y)
				
				A: if(a == 1 && b == 0 && c ==0)
						begin
							Y <= B;
							change <= c0;
						end
					
					else if(a == 0 && b == 1 && c ==0)
							begin 
								Y <= C;
								change <= c0;
							end
							
					else if (a == 0 && b == 0 && c == 1)
							begin
								Y <= F;
								bottle <= 1;
								change <= c0;
							end
							
					else  begin 
							Y <= A;
							change <= c0;
							end 
							
							
				B: if(a == 1 && b == 0 && c ==0)
						begin
							Y <= C;
							change <= c0;
						end
					
					else if(a == 0 && b == 1 && c ==0)
							begin 
								Y <= D;
								change <= c0;
							end
							
					else if (a == 0 && b == 0 && c == 1)
							begin
								Y <= F;
								bottle <= 1;
								change <= c1;
							end
							
					else	begin
							Y <= B;
							change <= c0;
							end
							
				C: if(a == 1 && b == 0 && c ==0)
						begin
							Y <= D;
							change <= c0;
						end
					
					else if(a == 0 && b == 1 && c ==0)
							begin 
								Y <= E;
								change <= 0;
							end
							
					else if (a == 0 && b == 0 && c == 1)
							begin
								Y <= F;
								bottle <= 1;
								change <= c2;
							end
							
					else	begin
							Y <= C;
							change <= c0;	
							end
							
				D: if(a == 1 && b == 0 && c ==0)
						begin
							Y <= E;
							change <= c0;
						end
					
					else if(a == 0 && b == 1 && c ==0)
							begin 
								Y <= F;
								bottle <= 1;
								change <= c0;
							end
							
					else if (a == 0 && b == 0 && c == 1)
							begin
								Y <= F;
								bottle <= 1; 
								change <= c3;
							end
							
					else	begin
							Y <= D;
							change <= c0;	
							end
							
				E: if(a == 1 && b == 0 && c ==0)
						begin
							Y <= F;
							bottle <= 1;
							change <= c0;
						end
					
					else if(a == 0 && b == 1 && c ==0)
							begin 
								Y <= F;
								bottle <= 1;
								change <= c1;
							end
							
					else if (a == 0 && b == 0 && c == 1)
							begin
								Y <= F;
								bottle <= 1;
								change <= c4;
							end
							
					else	begin
							Y <= E;
							change <= c0;
							end
					
					
				F: begin
						Y <= A;
						change <= c0;
					end
					
				default:
						Y <= 3'bxxx;
						
			endcase
		end
		
	endmodule 
							