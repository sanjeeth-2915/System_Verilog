module for_each;
int arr[8];

initial begin
  foreach(arr[i]) begin
    arr[i] = i;
    $display("value of arr[%d] = %0d ", i,arr[i]);
  end
end
endmodule
