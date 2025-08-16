//Class Properties accessed using class name

class sample;
static int s_count = 2;
endclass

module class_example;
sample s1;

initial begin
  Sdisplay("Value of s_count using class name = %0d", sample::s_count);
end
endmodule

//Class Properties accessed using class handle

class sample;
static int s_count = 2;
endclass

module class_example;
sample s1;
  
initial begin
  Sdisplay("Value of s_count using class handle = %0d", s1.s_count);
end
endmodule
