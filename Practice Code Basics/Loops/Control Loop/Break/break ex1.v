module break_ex;
int i;

initial begin
while(i<8) begin
$display("Value of i = %0d", i);
if (i == 5) begin
break;
end
i++;
end

end
endmodule

/*Result 
0
1
2
3
4
*/

module break_ex;
int i;
initial begin
  forever begin
    $display("Value of i = %0d", i);
    #2 i++;
    if (i == 8)
    break;
  end
end
  endmodule

/*Reult 
0
1
2
3
4
5
6
7
*/
