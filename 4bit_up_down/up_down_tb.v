module updown_counter_tb;
  reg clk, rst, up;
  wire [3:0] q;

  updown_counter uut(clk, rst, up, q);

  initial begin
    clk=0;
    forever #5 clk=~clk;
  end

  initial begin
    $monitor("clk=%b rst=%b up=%b q=%b", clk,rst,up,q);
    rst=1; #10;
    rst=0; up=1; #50;
    up=0; #50;
  end
endmodule