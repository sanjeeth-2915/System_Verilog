module queue();
int var_1[$] = [10,20,30,40,50};
int var_2[$:8];
int i,j;

initial begin

var_2 = var_1;
$display("var_2= %p", var_2);
  
var_1 = {var_1, 60};
$display("Inserting 60 at end of the var_1=%p", var_1);

var_1 = [80, var_1}; 
$display("Inserting 80 at beginning of the var_1=%p", var_1);

i = var_1[0];
j = var_1[$];
$display("Value of i=%0d j=%0d ",i,j);

var_1[2] = 100;
$display("Result of var_1 after changing the index 2= %p", var_1);

var_1 = var_1[2:$];
$display("Delete 0th and 1st index element in var_1=%p", var_1);

var_1 var_1[0:$-1];
$display("Delete the last element in var_1= %p", var_1);

var_1 ={};
$display("Delete all the element in var_1= %p", var_1);

var_2 [var_2,60,70,80,90,100);
$display(" Resut of var_2 when we exceed the index = %p", var_2);

end
endmodule

/*Result 
var_2= {10, 20, 30, 40, 50)
Inserting 60 at end of the var_1= {10, 20, 30, 40, 50, 60}
Inserting 80 at beginning of the var_1= '80, 10, 20, 30, 40, 50, 603
Value of i=80 j=60
Result of var_1 after changing the index 2= '{80, 10, 100, 30, 40, 50, 60)
Delete Oth and 1st index element in val1= '[100, 30, 40, 50, 60)
Delete the last element in var_1= '{100, 30, 40, 50)
Delete all the element in var_1= '{}

-----------------------------------------
var_2 = {var_2,60,70,80,90,100);
xmsim: W, RTSVQO (./design.sv,30/33): SystemVerilog queue overflow beyond 9 items, tail entry lost.

it give error because we have assigned only 9bits but here we have 10 bits 
int var_2[$:8];
------------------------------------------

Resut of var_2 when we exceed the index = {10, 20, 30, 40 50, 60, 70, 80, 90)
