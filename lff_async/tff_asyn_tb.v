module tff_async_tb;
  reg t,clk,reset;
  wire q;
  tff_async tff_async(.t(t),.clk(clk),.reset(reset),.q(q));
  initial begin
    $dumpfile ("tff_async.vcd");
    $dumpvars(1,tff_async_tb);
    $monitor("t=%d reset=%b clk=%b t=%b q=%b",$time,reset,clk,t,q);
  end
  initial begin
    reset=1;
    clk=1;
    t=0;
    #20 $finish;
  end
  always #4 reset=~reset;
  always #4 clk=~clk;
always #2 t=~t;
endmodule