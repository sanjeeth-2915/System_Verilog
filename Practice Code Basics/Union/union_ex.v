module union_example;
union {
int a;>
byte b;
} trial;
initial begin
trial.a = 'hff_ffff;
$display("a = %0h", trial.a);
trial.b = 3;
$display("b=%0h", trial.b);
$displayh("trial: %p", trial);
end
endmodule


//Results:
//a = ffffff
//b = 3
//trial: '{a:00ffff03, b:03}
