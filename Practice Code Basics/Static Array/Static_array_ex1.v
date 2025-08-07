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
