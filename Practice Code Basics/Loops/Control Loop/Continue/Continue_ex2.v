module continue_ex;
int i;

initial begin
  while(i<8) begin
    $display("Value of i = %0d", i);
    if (i == 5) begin
      continue;
    end
    i=i+1;
  end
end
endmodule

/*Result 
not exist because 5 executes infinite number of times */

module continue_ex;
  
initial begin
  for (int i = 0; i< 8; i++) begin
    if (i == 5) begin
      continue;
    end
  $display("Value of i = %0d", i);
  end
end
endmodule

/*Result 
0
1
2
3
4
5
6
7
*/
