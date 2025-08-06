module str_operations;
string a = "Hello world";
string b = "Hello world";
string c = "Welcome to vlsi";
initial begin
if(a == b)
$display(" a and b are equal");
else
$display(" a and b are not equal");
if(a != c)
$display(" a and c are not equal");
else
$display(" a and c are equal");
for(int i=0;i< 5 ; i++)
$display("%s",a[i]);
end
endmodule
