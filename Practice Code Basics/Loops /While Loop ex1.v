module while_loop;
int i;

initial begin 
  while(i<10) begin 
    $display("The Value of i is = %0d" , i);
    i++;
  end 
end 
endmodule 
