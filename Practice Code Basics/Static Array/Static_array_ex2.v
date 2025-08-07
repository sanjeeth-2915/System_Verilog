module static_array_example;
int arr_1 [5] = {1, 2, 3, 4, 5};
int arr_2 [2:0][3:0];
initial begin
arr_2 = {{1, 10, 100, 1000}, '{2, 20, 200, 2000}, '{3, 30, 300, 3000}};
foreach (arr_1[i]) begin
Sdisplay("arr_1[%0d] = = %0d", i, arr_1[i]);
end
foreach (arr_2[i, j]) begin
$display("arr_2[%0d] [%0d] = %0d", i,j, arr_2[i][j]);
end
endmodule

/*Result:
arr_1[0] = 1
arr 1[1] = 2
arr_1[2] 3
arr_1[3] = 4
arr_1[4] = 5
arr 2[2][3] = 1
arr_2[2][2] = 10
arr_2[2] [1] = 100
arr 2[2][0] = 1000
arr 2[1] [3] = 2
arr 2[1][2] = 20
arr_2[1][1] = 200
arr_2[1][0] = 2000
arr_2[0][3] = 3
arr_2[0][2] = 30
arr_2[0][1]= 300
arr 2[0][0] = 3000*/
  
