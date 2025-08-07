module queue_methods;

int q1 [$]=[1,2,3,4,5);
int i;

initial begin

$display("Size of the queue is %0d", q1.size());
$display("Initial data in queue q1=%p",q1);
  
q1.insert(2,80);
$display("Result of queue after inserted 80 at 2nd index is q1=%p",q1);

q1.push_front(10);
$display("push_front method q1=%p",q1);

q1.push_front(20);
$display("push_front method q1=%p",q1);

q1.push_back(80);
$displayt push_back method q1=%p",q1);

q1.push_back(90);
$display("push_back method q1=%p",q1);

i = q1.pop_front();
$display("pop_front method Value of i =%0d and q1=%p", i,q1);

i=q1.pop_back();
$display("pop_back method Value of i =%0d and q1=%p",i,q1);

q1.delete(5);
$display("After deleting the 5th index, value of queue is q1=%p",q1);

q1.delete();
$display("After deleting the all the elements in queue is q1=%p",q1);

end
endmodule

/*Result

Size of the queue is 5
Initial data in queue q1='{1, 2, 3, 4, 5}
Result of queue after inserted 80 at 2nd index is q1='{1, 2, 80, 3, 4, 5}
push_front method q1='{10, 1, 2, 80, 3, 4, 5}
push_front method q1='{20, 10, 1, 2, 80, 3, 4, 5}
push_back method q1='{20, 10, 1, 2, 80, 3, 4, 5, 80)
push_back method q1='{20, 10, 1, 2, 80, 3, 4, 5, 80, 90)
pop_front method Value of i 20 and q1='{10, 1, 2, 80, 3, 4, 5, 80, 90} pop_back method value of i=90 and q1={10, 1, 2, 80, 3, 4, 5, 80}
After deleting the 5th index, value of queue is q1='{10, 1, 2, 80, 3, 5, 80}
After deleting the all the elements in queue is q1='{}
