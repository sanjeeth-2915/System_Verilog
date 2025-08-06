module enum_example();
typedef enum {STREET[3:7]} street_num_e;
street_num_e street_num;
initial begin
$display("Element is %s and its value is %d", street_num.name(), street_num);
street_num = STREET5;
$display("Element is %s and its value is %d",street_num.name(), street_num);
end
endmodule
