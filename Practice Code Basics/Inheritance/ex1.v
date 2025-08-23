class sample;
bit [31:0] data;
int addr;
  
function new (bit [31:0] data, int addr);
data = data;
addr = addr;
endfunction
endclass

module example;
initial begin
sample s1 = new(15, 100);
$display("Value of data = %0d, addr = %0d",s1.data, s1.addr);
end
endmodule
