module seq_test;
reg w,clk,reset ;
wire z ;

seq_1011 uut(.w(w) , .clk(clk) , .reset(reset) , .z(z));

initial begin
clk = 1;
forever #10
clk = ~ clk;
end
initial begin 
//w = 0;
reset = 0;
w = 0;
#20;
reset = 1;
w = 1;
#20;
w = 0;
#20;
w = 1;
#20;
w = 1;
#20;
w = 0;
#20;
w = 1;
#20;
w = 1;
#20;

end
endmodule
