class sample;
int a;
bit b;

function user_fun(int const_a, bit const_b);
a = const_a;
b = const_b;
  $display("INSIDE_USER_DEFINED_FUN value of a = %0d b = %0d",a,b);

endfunction
endclass

module class_example;
sample tr1, tr2;
initial begin

tr1 = new();
if(tr1 != null)
tr1.user_fun(5,0);
else
$display("tr1 object is not created");
if(tr2 != null)
tr2.user_fun (6,1);
else
$display("tr2 object is not created");
end
endmodule
