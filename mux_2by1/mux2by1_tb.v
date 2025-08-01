
module mux2by1_tb;
  reg s,a,b;
  wire f;
  mux2by1 mux(.s(s),.a(a),.b(b),.f(f));
initial begin
  $monitor("s=%0b a=%0b b=%0b f=%0b",s,a,b,f);
  $dumpfile("mux2by1.vcd");
  $dumpvars(1,mux2by1_tb);
end
initial begin
  s=0;
  a=1'b0; b=1'b1;
  #10
  s=1;
  #10
  $finish;
end
endmodule