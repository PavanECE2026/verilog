// Code nor gate testbench 
module nor_gate_tb;
  reg a,b;
  wire y;
//instantiate nor_gate module
 nor_gate norgate(.a(a),.b(b),.y(y));
//dump and monitor informations
initial begin 
  $monitor("a=%0d b=%0d y=%0d",a,b,y);
  $dumpfile("nor_gate.vcd");
  $dumpvars(1,nor_gate_tb);
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