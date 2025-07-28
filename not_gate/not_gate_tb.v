
// Code not gate testbench 
module not_gate_tb;
  reg a;
  wire y;
//instantiate not_gate module
 not_gate notgate(.a(a),.y(y));
//dump and monitor informations
initial begin 
  $monitor("a=%0d y=%0d",a,y);
  $dumpfile("not_gate.vcd");
  $dumpvars(1,not_gate_tb);
end
//apply inputs
initial begin
  a=1'b0;;
  #10
  a=1'b1;
  #10
$finish();
end
endmodule
