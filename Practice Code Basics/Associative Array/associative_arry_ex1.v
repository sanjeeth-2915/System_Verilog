module associative_array();

int num_bikes[string];

int a_array[integer] = '{ 3:100, 4:200, 5:300 };

initial begin

num_bikes = '{"yamaha": 5, "royal enfield": 1, "honda": 7};
$display("Number of bikes = %p", num_bikes);
$display("Number of honda bike is = %0d", num_bikes["honda"]);
$display(" a_array = %p", a_array);
$display("Value of 4 is = %0d", a_array[4]);
end
endmodule


/*rResults

Number of bikes = '{"honda": 7, "royal enfield":1, "yamaha":5}
Number of honda bike is = 7
a__array = '{3:100, 4:200, 5:300 }
Value of 4 is = 200
