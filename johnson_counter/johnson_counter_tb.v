module johnson_counter_tb;
  reg clk, rst;
  wire [3:0] q;

  johnson_counter uut(clk, rst, q);

  initial begin
    clk=0; forever #5 clk=~clk;
  end

  initial begin
    $monitor("q=%b", q);
    rst=1; #10; rst=0;
    #60;
  end
endmodule