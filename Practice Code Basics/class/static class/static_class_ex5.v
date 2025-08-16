//Class Methods accessed using class name

class sample;
static int s_count=3;
static function count_fun();
  s_count++;
  endfunction
endclass

module class_example;
sample s1;
initial begin
  sample::count_fun();
  Sdisplay("Value of s_count using class name is %0d", sample::s_count);
  end
endmodule

//Class Methods accessed using class handle

class sample;
static int s_count=3;
static function count_fun();
s_count++;
endfunction
endclass

module class_example;
sample s1;
initial begin
s1.count_fun();
Sdisplay("Value of s_count using class handle is %0d",s1.s_count);
end
endmodule
