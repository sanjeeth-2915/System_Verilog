Class sample;
static function count_fun();
int s_count;
s_count++;
$display("s_count=%0d",s_count);
endfunction
endclass

module class_example;
sample s1[7];
initial begin
foreach (s1[i]) begin
s1[i] = new();
s1[i].count_fun();
end
end
endmodule

/*Result
s_count = 1
s_count = 1
s_count = 1
s_count = 1
s_count = 1
s_count = 1
s_count = 1
*/
class sample;
static function count_fun();
  int s_count;
  s_count++;
  Sdisplay("s_count=%0d",s_count);
  endfunction
endclass

module class_example;
sample s1[7];
initial begin;
foreach (s1[i]) begin
s1[i] = new();
s1[i].count_fun();
  Sdisplay("Value of s_count[%d]= %0d",i, s1[i].s_count); //variabe is accessed outside so error 
end
end
endmodule

/*result----> error
