//Multilevel Inheritance

class parent_cls;
int add;
function add_fun(int a, int b);
add = a + b;
endfunction
endclass

class child_1_cls extends parent_cls;
int sub;
function sub_fun(int a, int b);
sub = a - b;
endfunction
endclass

class child_2_cls extends child_1_cls;
int mul;
function mul_fun(int a, int b);
mul = a * b;
endfunction
endclass

module class_example;
initial begin
child_2_cls c1;
c1 = new();
c1.add_fun(4,3);
c1.sub_fun(4,3);
c1.mul_fun(4,3);
  $display("Value of add=%0d sub=%0d mul=%",c1.add,c1.sub,c1.mul);
end
endmodule
