module for_ever;
int i;

initial begin
  forever begin
    $display("Value of i = %0d", i);
    #2 i++;
  end
end
initial begin 
  #20 $finish;
end 
endmodule
