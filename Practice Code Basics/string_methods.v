module str_methods;
string a = "HELLO";
string b = "world!!";
string c = "HELLO";
string d = "hello";
  
initial begin
$display("Size of string a is %2d", a.len() );
$display("1st character of string a is %2s", a.getc(1) );
$display("String b in upper case %s", b.toupper());
$display("String a in lower case %s", a.tolower());
$display("Case sensitive compare between a and c %2d", a.compare(c));
$display("Case insensitive compare between a and d %2d", a.icompare(d));
$display("Substring of a is %s", a.substr(1,3));
end
endmodule
