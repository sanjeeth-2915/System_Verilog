static int s_count;
int count;

function new ();
s_count++;
count++;
endfunction

endclass

module class_example;
sample s1 [7];
initial begin
foreach (s1[i]) begin
S1[i] = new();
Sdisplay("Value of s_count[%d] = %0d, count[%d] = %0d", i, s1[i].s_count, i, s1[i].count);
end

foreach (s1[i]) begin
Sdisplay("Value of s_count[%d] - %0d", i, s1[i].s_count);
end
end
endmodule
