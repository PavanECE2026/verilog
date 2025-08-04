module parity_gen_tb;
  reg [2:0] d;
  wire parity;

  parity_gen uut(d, parity);

  initial begin
    $monitor("d=%b parity=%b", d, parity);
    d=3'b000; #10;
    d=3'b101; #10;
    d=3'b111; #10;
  end
endmodule