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

/*Result --- skip 5
0
1
2
3
4
6
7*/
