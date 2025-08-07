module mealy1101_tb;
  reg x,clk,reset;
  wire out;
  wire [1:0]present,next;
  mealy1101 mealy(
    .x(x),
    .clk(clk),
    .reset(reset),
    .out(out),
    .present(present),
    .next(next));
  initial begin
    $monitor("t=%d x=%b clk=%d reset=%b out=%b present=%b next=%b",$time,x,clk,reset,out,present,next);
    $dumpfile("mealy1101.vcd");
    $dumpvars(1,mealy1101_tb);
  end
  initial begin
    clk = 1;
    reset = 1;
    x = 1;
    #5
    reset = 0;
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
    #40
    $finish;
  end
  always #10 clk = ~clk;
endmodule