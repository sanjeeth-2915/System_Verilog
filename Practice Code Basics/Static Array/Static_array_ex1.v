module static_array_example;
bit a [3:0]
bit [3:0] def_a [4] = '{ default: 4'h8 };
bit [3:0] def_b [3:0] = '{ 4{1} };
initial begin
foreach (a[i]) begin
$display("Default value of a[%0d] = %0d", i, a[i]);
end
foreach (def_a[i]) begin 
$display("def_a[%d] = %0d", i, def_a[i]); 
end
foreach (def_b[i]) begin
$display("def_b[%0d] = %0d", i, def_b[i]);
end
end
endmodule


/*Result
Default value of a[3] = 0
Default value of a[2] = 0
Default value of a[1] = 0
Default value of a[0] = 0
def_a[0] = 8
def_a[1] = 8
def a[2] = 8
def_a[3] = 8
def_b[3] = 1
def_b[2] = 1
def b[1] = 1
def_b[0] = 1
*/
