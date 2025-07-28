// Code or gate testbench 
module or_gate_tb;
  reg a,b;
  wire y;
//instantiate or_gate module
 or_gate orgate(.a(a),.b(b),.y(y));
//dump and monitor informations
initial begin 
  $monitor("a=%0d b=%0d y=%0d",a,b,y);
  $dumpfile("or_gate.vcd");
  $dumpvars(1,or_gate_tb);
end
//apply inputs
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