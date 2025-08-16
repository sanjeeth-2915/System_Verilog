class sample;
static int s_count;
int count;
function static count_fun();
  int status;
  status=s_count++;
  count++;
  $display("Value of status= %0d", status);
  endfunction
endclass

module class_example;
sample s1[7];
initial begin
  foreach (s1[i]) begin
  s1 [i] = new();
  s1[i].count_fun();
  Sdisplay("Value of s_count[%d]= %0d count[%d]=%0d", i, s1[i].s_count, i, s1[i].count);
  end
end
endmodule
