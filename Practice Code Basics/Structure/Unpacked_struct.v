module struct_example;
struct {
string name;
int roll_num;
int mark;
} student_detail;
initial begin
student_detail.name = "Kathir";
student_detail.roll_num = 3;
student_detail.mark = 484;
$display("Student detail: %p", student_detail);
end
endmodule


//Result
//Student detail: '{name: "Kathir", roll_num: 3, mark: 484}
