module clk_div2_tb;
  reg clk, rst;
  wire clk_out;

  clk_div2 uut(clk, rst, clk_out);

  initial begin clk=0; forever #5 clk=~clk; end

  initial begin
    $monitor("clk=%b clk_out=%b", clk, clk_out);
    rst=1; #10; rst=0;
    #50;
  end
endmodule