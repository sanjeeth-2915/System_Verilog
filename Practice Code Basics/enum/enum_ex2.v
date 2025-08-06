module enum_example();
typedef enum bit[2:0] { SUNDAY, MONDAY,
TUESDAY, WEDNESDAY,
THURSDAY, FRIDAY,
SATURDAY} weeks_e;
weeks_e week;
initial begin
$display("Total element of enum is %0d", week.num());
week = week.first();
$display("First element is %Od and its name is %s", week, week.name());
week = week.last();
$display("Last element is %0d and its name is %s", week, week.name())
week = WEDNESDAY;
$display("Next Element is %s", week.next().name());
$display("Curent element is %s", week.name());
$display("Previous element is %s", week.prev(2).name());
end
endmodule
