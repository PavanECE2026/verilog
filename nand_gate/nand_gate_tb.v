
module nand_gate_tb;
  reg a,b;
  wire y;
 nand_gate nandgate(.a(a),.b(b),.y(y));
initial begin 
  $monitor("a=%0d b=%0d y=%0d",a,b,y);
  $dumpfile("nand_gate.vcd");
  $dumpvars(1,nand_gate_tb);
end
initial begin
  a=0; b=0;
  #10
  a=0; b=1;
  #10
  a=1'b1; b=0;
  #10
  a=1; b=1;
  #10
$finish();
end
endmodule