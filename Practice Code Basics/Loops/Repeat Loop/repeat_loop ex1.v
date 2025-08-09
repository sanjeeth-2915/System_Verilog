module repeat_loop;
int i;

initial begin
  repeat(5) begin
    $display("value of i = %0d ", i);
    i++;
  end
end
endmodule
