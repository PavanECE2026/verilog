module seq_det_101_tb;
  reg clk, rst, din;
  wire dout;

  seq_det_101 uut(clk, rst, din, dout);

  initial begin
    clk=0;
    forever #5 clk=~clk;
  end

  initial begin
    $monitor("din=%b dout=%b", din, dout);
    rst=1; #10; rst=0;
    din=1; #10; din=0; #10; din=1; #10; // detects 101
    din=1; #10; din=1; #10;
    din=0; #10; din=1; #10;
  end
endmodule