module for_ever;
int clk;

initial begin
  forever begin
    #500 clk = ~clk;
  end
end
initial begin 
  #1000 $finish;
end 
endmodule
