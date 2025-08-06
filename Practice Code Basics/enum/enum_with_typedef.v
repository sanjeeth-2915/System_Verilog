module enum_example();
typedef enum {CARROT,
BRINJAL,
ONION,
POTATO,
TOMATO} veg_e;
veg e veg1,veg2, veg3;
initial begin
veg1 = ONION;
veg2 = CARROT;
veg3 = TOMATO;
$display(" veg1 = %s \n veg2 = %s \n veg3 = %s",veg1.name(),veg2.name(), veg3.name());
end
endmodule
