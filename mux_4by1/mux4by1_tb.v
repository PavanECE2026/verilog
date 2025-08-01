module mux4by1_tb;
  reg s1,s0,i0,i1,i2,i3;
  wire f;
  mux4by1 mux(.s1(s1),.s0(s0),.i0(i0),.i1(i1),.i2(i2),.i3(i3),.f(f));
initial begin
  $monitor("s1=%0b s0=%0b i0=%0b i1=%0b i2=%0b i3=%0b",s1,s0,i0,i1,i2,i3);
  $dumpfile("mux4by1.vcd");
  $dumpvars(1,mux4by1_tb);
end
initial begin
  s1=0; s0=0; i0=1; i1=0; i2=0; i3=0;
  #100
  s1=0; s0=1; i0=0; i1=1; i2=0; i3=0;
  #100
  s1=1; s0=0; i0=0; i1=0; i2=1; i3=0;
  #100
  s1=1; s0=1; i0=0; i1=0; i2=0; i3=1;
  #100
  $finish;
end
endmodule