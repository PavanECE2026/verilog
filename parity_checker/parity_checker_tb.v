module parity_check_tb;
  reg [3:0] d;
  wire error;

  parity_check uut(d, error);

  initial begin
    $monitor("d=%b error=%b", d, error);
    d=4'b1010; #10; 
    d=4'b1011; #10;
  end
endmodule