

module associative_array();
  int num bikes[string] ["yamaha": 5, "royal enfield": 1, "hero":3, "honda":7];
  string brand;

initial begin

$display("Bikes are %p", num_bikes);
$display("Number of honda bike is %0d", num_bikes["honda"]); 
$display("Total bikes using num() method = %0d", num_bikes.num()); 
if(num_bikes.first(brand))
  $display("First brand in num bikes array = %s", brand);
if(num_bikes.last(brand)) 
  $display("last brand in num bikes array = %s", brand);
if(num_bikes.prev(brand));
  $display("Previous brand in num bikes array = %s", brand);
brand = "hero";
num_bikes.next(brand);
  Sdisplay("Next element of honda is = %0s", brand);
         
 end
endmodule

/*Result-

Bikes are {"hero":3, "honda":7, "royal enfield": 1, "yamaha": 5}
Number of honda bike is 7
Total bikes using num() method = 4
First brand in num bikes array = hero
last brand in num bikes array = yamaha
Previous brand in num bikes array = royal enfield
Next element of hero is = honda
*/

