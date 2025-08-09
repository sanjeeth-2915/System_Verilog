module for_loop;
  int i;

  initial begin 
    for (i=0;i<100;i++) begin 
      $display("The value of i = %0d", i);
                
    end
  end 
endmodule 
      
