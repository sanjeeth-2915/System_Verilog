module test;
real a,b;
realtime t1, t2;
initial begin
#1 t1 = $realtime;
# 1.7 t2 = $realtime;
b = 1.7;
a = t2- t1;
if(a == b)
$display("PASS t1 = %1.3f t2 = %1.3f \n a = %1.60f\n b = %1.60f",t1, t2,a,b);
else
$display("FAIL t1 = %1.3f t2 = %1.3f \n a = %1.60f\n b = %1.60f",t1, t2,a,b);
end
endmodule
