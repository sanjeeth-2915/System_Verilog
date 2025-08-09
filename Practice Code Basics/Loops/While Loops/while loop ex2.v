module example;
int clk;

initial begin
 while(1) begin
 #500 clk=~clk;
 end
end
  
initial begin
 #1000 $finish;
end
  
endmodule
