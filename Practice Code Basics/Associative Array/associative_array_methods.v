
module associative_array(); 
bit [7:0] array [int];
int key;

initial begin

array =  {17:2, 10:4, 2:6, 9:8, 30:10, 13:12, 5:10};
 /* 
array[7] = 2;

array[10] = 4;

array[2] = 6;

array[9] = 8;

array[30] = 10;

array[13] = 12;

array[5] = 10;
*/

//display number of elements
$display("Elements are = %p", array);
Sdisplay("Total elements using num() method = %0d", array.num());
Sdisplay("Total elements using size() method = %0d", array.size());

array.first(key);
Sdisplay("First element of array = %0d", key);

array.last(key);
Sdisplay("Last element of array = %0d", key);

array.prev(key);
Sdisplay("Previous element of 30 is %0d", key);

key = 9;
array.next(key);
Sdisplay("Next element of 9 is %0d", key);

if(array.exists(5))
$display("An element exists at index = 5");
else
Şdisplay("An element doesn't exists at index = 5");

array.delete(13);
$display("Elements are = %p", array);
  
array.delete();
Sdisplay("Size of the array is %0d", array.size());

end
endmodule

/*
Result

# Elements are = '{2:6, 5:10, 7:2, 9:8, 10:4, 13:12, 30:10 }
# Total elements using num() method = 7
# Total elements using size() method = 7
# First element of array = 2
#Last element of array = 30
# Previous element of 30 is 13
#Next element of 9 is 10
#An element exists at index = 5
#Elements are = '{2:6, 5:10, 7:2, 9:8, 10:4, 30:10 }
#Size of the array is 0
*/
