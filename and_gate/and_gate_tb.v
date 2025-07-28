// Code and gate testbench 
module and_gate_tb;
  reg a,b;
  wire y;
 and_gate andgate(.a(a),.b(b),.y(y));
initial begin 
  $monitor("a=%0d b=%0d y=%0d",a,b,y);
  $dumpfile("and_gate.vcd");
  $dumpvars(1,and_gate_tb);
end
initial begin
  a=1'b0; b=1'b0;
  #10
  a=1'b0; b=1'b1;
  #10
  a=1'b1; b=1'b0;
  #10
  a=1'b1; b=1'b1;
  #10
$finish();
end
endmodule