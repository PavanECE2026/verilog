module example_function;
  integer a;
  function sum(input int x,y);
    begin
      a=x+y;
    end
  endtask
  initial begin
   
    sum(3,4);
    $display("a=%d",a);
  end
endmodule