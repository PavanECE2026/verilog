module moore1010_overlap_tb;
  reg d,clk,reset;
  wire out;
  wire [2:0]present,next;
  moore1010_overlap moore(
    .d(d),
    .clk(clk),
    .reset(reset),
    .out(out),
    .present(present),
    .next(next));
  initial begin
    $monitor("t=%d d=%b clk=%d reset=%b out=%b present=%b next=%b",$time,d,clk,reset,out,present,next);
    $dumpfile("moore1010_overlap.vcd");
    $dumpvars(1,moore1010_overlap_tb);
  end
  initial begin
    clk = 1;
    reset = 1;
    d = 1;
    #5
    reset = 0;
  end
  initial begin
    #10
    d = 1'b1;
    #10
    d = 1'b0;
    #20
    d = 1'b1;
    #20
    d = 1'b0;
    #20
    d = 1'b1;
    #20
    d = 1'b0;
    #100
    $finish;
  end
  always #10 clk = ~clk;
endmodule