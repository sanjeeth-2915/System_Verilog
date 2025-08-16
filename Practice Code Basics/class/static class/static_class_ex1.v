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


/*Result

#Value of s_count [0] = 1, count [0] = 1
#Value of s_count [1] = 2, count [1] = 1
#Value of s_count [2] = 3, count [2] = 1
#Value of s_count [3] = 4, count [3] = 1
#Value of s_count [4] = 5, count [4] = 1
#Value of s_count [5] = 6, count [5] = 1
#Value of s_count [6] = 7, count [6] = 1
#Value of s_count [0] = 7
#Value of s_count [1] = 7
#Value of s_count [2] = 7
#Value of s_count [3] = 7
#Value of s_count [4] = 7
#Value of s_count [5] = 7
#Value of s_count [6] = 7
*/
