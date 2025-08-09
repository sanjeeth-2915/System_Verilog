module do_while;
int i;

initial begin

 do begin
   $display("Value of i = %0d", i);
   i++;
end
while(i < 8);

end
endmodule
