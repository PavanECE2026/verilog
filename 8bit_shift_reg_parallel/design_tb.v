module shift_reg_load_tb;
  reg clk, rst, load;
  reg [7:0] din;
  wire [7:0] q;

  shift_reg_load uut(clk, rst, load, din, q);

  initial begin clk=0; forever #5 clk=~clk; end

  initial begin
    $monitor("load=%b din=%b q=%b", load, din, q);
    rst=1; #10; rst=0;
    load=1; din=8'b10101010; #10;
    load=0; #20;
  end
endmodule