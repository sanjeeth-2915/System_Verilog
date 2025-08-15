class sample;
int a;
bit b;

function new(int const_a, bit const_b);
a = const_a;
b = const_b;
$display("INSIDE_NEW_CONSTRUCTOR value of a = %0d b = %0d",a,b);
endfunction

function user_fun(int const_a, bit const_b);
a = const_a;
b = const_b;
$display("INSIDE_USER_DEFINED_FUN value of a= %0d b = %0d",a,b);
endfunction
  
endclass

module class_example;
sample tr;
initial begin
tr = new(5,0);
tr.user_fun (5,0);
$display("Value of a=%0d b=%0d", tr.a, tr.b);
end

endmodule
