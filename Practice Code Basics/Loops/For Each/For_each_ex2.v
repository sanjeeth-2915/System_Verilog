module for_each;
int arr[5][3];

initial begin
  foreach(arr[i,j]) begin
    arr[i][j] = i;
    $display("value of arr[%d] [%d] = %0d", i,j, arr[i][j]);
  end
end
endmodule
