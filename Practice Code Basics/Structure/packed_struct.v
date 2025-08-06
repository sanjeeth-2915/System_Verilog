module struct_example;
struct packed {
int roll_num;
int mark;
student_detail;
initial begin
student_detail.roll_num = 3;
student_detail.mark = 484;
$display("Student detail: %p", student_detail);
end
endmodule


//Result
//Student detail: '{roll_num:3, mark:484}
