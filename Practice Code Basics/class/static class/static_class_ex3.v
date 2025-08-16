class sample;
static int s_count;
static function count_fun();
s_count++;
endfunction
endclass

module class_example;
sample s1[7];
initial begin
  foreach (s1[i]) begin
    s1[i] = new();
    s1[i].count_fun();
    Sdisplay("Value of s_count[%d]= %0d", i,s1[i].s_count);
  end
end
endmodule

class sample;
int s_count;
static function count_fun();
  s_count++;
  endfunction
endclass

module class_example;
sample s1[7];
  
initial begin
    foreach (s1[i]) begin
    s1[i] = new();
    s1[i].count_fun();
    Sdisplay("Value of s_count[%d]= %0d", i,s1[i].s_count);
    end
end
endmodule
