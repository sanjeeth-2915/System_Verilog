module struct_example;
typedef struct {
string name;
int roll_num;
int mark;
} student_detail;
student_detail st1,st2;
initial begin
st1.name = "Kathir";
st1.roll_num = 3;
st1.mark = 484;
st2 ='{"Velan", 7, 350 };
$display("Student detail st1: %p", st1);
$display("Student detail st2: %p", st2);
  $display("Student: Name = %s, Roll number = %0d Mark=%0d", st1.name, st1.roll_num, st1.mark);
end
endmodule
