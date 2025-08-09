module repeat_loop;
int arr[5];
int i;

initial begin
  repeat($size(arr)) begin
  arr[i] = i;
  $display("value of arr[%d] = %0d", i,arr[i]);
  i++;
end
end
endmodule
