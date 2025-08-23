class parent_cls;
int data;

function calculation(int m_data);
  data = m_data;
endfunction
endclass

class child_cls extends parent_cls;
int addr;

function display();
  $display("Value of addr = %0h", addr);
endfunction
endclass

module class_example;
initial begin
child_cls c1;
c1 = new();
c1.calculation(8);
  $display("Value of data = %0d", c1.data);
c1.addr= 15;
c1.display();
end
endmodule
