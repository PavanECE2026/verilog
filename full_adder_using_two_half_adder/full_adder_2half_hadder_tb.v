module full_adder_tb;
reg a,b,cin;
wire sum,carry;
  full_adder fulladder(.a(a),.b(b),.cin(cin),.sum(sum),.carry(carry));
initial begin
  $monitor("a=%0b b=%0b c=%0b sum=%0b carry=%0b",a,b,cin,sum,carry);
  $dumpfile("full_adder.vcd");
  $dumpvars(1,full_adder_tb);
end
initial begin
  a=0 ;b=0 ;cin=0;
  #10
  a=0 ;b=0 ;cin=1;
  #10
  a=0 ;b=1 ;cin=0;
  #10
  a=0 ;b=1 ;cin=1;
  #10
  a=1 ;b=0 ;cin=0;
  #10
  a=1 ;b=0 ;cin=1;
  #10
  a=1 ;b=1 ;cin=0;
  #10
  a=1 ;b=1 ;cin=1;
  #10
$finish();
end
endmodule