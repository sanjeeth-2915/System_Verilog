//using static int (variable)

class sample;
static int s_count;
static function count_fun();
s_count++;
endfunction
endclass

module class_example;
sample s1[7];
initial begin
  foreach (s1[i]) begin
    s1[i] = new();
    s1[i].count_fun();
    Sdisplay("Value of s_count[%d]= %0d", i,s1[i].s_count);
  end
end
endmodule

/*Result 

Value of s_count[0]= 1
Value of s_count[1]= 2
Value of s_count[2]= 3
Value of s_count[3]= 4
Value of s_count[4]= 5
Value of s_count[5]= 6
Value of s_count[6]= 7
*/

//without using the static int

class sample;
int s_count; // without static it cannot be used so complilation error
static function count_fun();
  s_count++;
  endfunction
endclass

module class_example;
sample s1[7];
  
initial begin
    foreach (s1[i]) begin
    s1[i] = new();
    s1[i].count_fun();
    Sdisplay("Value of s_count[%d]= %0d", i,s1[i].s_count);
    end
end
endmodule

/*result 
error 


