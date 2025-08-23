class parent_cls;
int data;
function calculation(int m_data);
data = m_data;
endfunction
endclass

class child_cls extends parent_cls;
int addr;
function calculation(int m_data);
data = m_data+2;
endfunction
endclass

module class_example;
initial begin
parent_cls p1;
child_cls c1;
c1 = new();
p1 = new();
c1.addr= 15;
p1.calculation(8);
c1.calculation(8);
$display("Using Child class instance, Value of data = %0d and addr =%0d",c1.data,c1.addr);
$display("Using Parent class instance, Value of data = %0d", p1.data);
end
endmodule
