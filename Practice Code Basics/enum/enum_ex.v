module enum_example();
typedef enum {CARROT, BRINJAL, ONION, POTATO, TOMATO} veg_e;
typedef enum logic [3:0] {SWEET=3, TANGY=6, SOUR, SALTY } taste_e;
veg_e veg;
taste_e taste;
initial begin
for(int i=0; i<5; i++) begin
$display("Element is %s and its value is %0d", veg.name(), veg);
veg = veg.next();
end
taste = TANGY;
$display("Element is %s and its value is %0d", taste.name(),taste);
end
endmodule
