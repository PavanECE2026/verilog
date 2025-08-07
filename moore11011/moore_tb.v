module moore11011_overlap_tb;
  reg x,clk,reset;
  wire out;
  wire [2:0]present,next;
  moore11011_overlap moore (
    .x(x),
    .clk(clk),
    .reset(reset),
    .out(out),
    .present(present),
    .next(next));
  initial begin
    $monitor("t=%d x=%b clk=%d reset=%b out=%b present=%b next=%b",$time,x,clk,reset,out,present,next);
    $dumpfile("moore11011_overlap.vcd");
    $dumpvars(1,moore11011_overlap_tb);
  end
  initial begin
    x = 1;
    clk = 1;
    reset = 1;
    #5 reset = 0;
  end
  initial begin
    #10
    x = 1'b1;
    #10
    x = 1'b1;
    #20
    x = 1'b0;
    #20
    x = 1'b1;
    #10
    x = 1'b1;
    #30
    x = 1'b0;
    #20
    x = 1'b1;
    #10
    x = 1'b1;
    #100
    $finish;
  end
  always #10 clk = ~clk;
endmodule
   