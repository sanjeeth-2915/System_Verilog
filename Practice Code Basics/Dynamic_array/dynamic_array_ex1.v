module dynamic_array;
int dyn_array[];
initial begin
  $display("Default Size of dyn_array %0d", dyn_array.size());
dyn_array = new[4];
dyn_array = '{0,1,2,3};
  $display("Size of dyn_array %0d", dyn_array.size());
foreach (dyn_array[i])
  $display("dyn_array[%0d] = %0d", i,dyn_array[i]);
dyn_array = new[7] (dyn_array);
$display("Size of dyn_array after resizing0d",dyn_array.size());
foreach (dyn_array[i])
$display("dyn_array[%0d] = %0d", i, dyn_array[i]);
dyn_array = new[9];
  $display("Size of dyn_array after resizing %0d",dyn_array.size());
foreach (dyn_array[i])
  $display("dyn_array[%0d] = %0d", i, dyn_array[i]);
dyn_array.delete
$display("size ofarray after deleting = %0d",dyn_array.size());
end
endmodule

/*result
Default size of dyn_array 0
Size of dyn_array 4
dyn_array[0] = 0
dyn_array[1] = 1
dyn_array[2] = 2
dyn_array[3] = 3
Size of dyn_array after resizing 7
dyn_array[0] = 0
dyn_array[1] = 1
dyn_array[2] = 2
dyn_array[3] = 3
dyn_array[4] = 0
dyn_array[5] = 0
dyn_array[6] = 0
Size of dyn_array after resizing 9
dyn_array[0] = 0
dyn_array[1] = 0
dyn_array[2] = 0
dyn_array[3] = 0
dyn_array[4] = 0
dyn_array[5] = 0
dyn_array[6] = 0
dyn_array[7] = 0
dyn_array[8] = 0
size of array after deleting = 0
