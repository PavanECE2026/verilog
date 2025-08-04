module shift_left_reg_tb;
  reg clk, rst, din;
  wire [7:0] q;

  shift_left_reg uut(clk, rst, din, q);

  initial begin clk=0; forever #5 clk=~clk; end

  initial begin
    $monitor("din=%b q=%b", din, q);
    rst=1; #10; rst=0;
    din=1; #10; din=0; #10; din=1; #20;
  end
endmodule