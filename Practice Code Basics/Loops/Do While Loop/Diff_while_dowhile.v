module example;
int i=9;

initial begin

do begin
$display("Value of i = %0d", i);
i++;
end

while(i < 8);
end
endmodule 

//Result i=9   (Because body of loop execute first)

module example;
int i=9;

initial begin

 while(i<8) begin

  $display("Value of i = %0d", i);
  i++;
 end
end
endmodule

//Result No output 
