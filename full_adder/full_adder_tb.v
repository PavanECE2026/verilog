
module full_adder_tb;
reg A,B,C;
wire S,Cout;
full_adder fulladder(.A(A),.B(B),.C(C),.S(S),.Cout(Cout));
initial begin
  $monitor("A=%0b B=%0b C=%0b S=%0b Cout=%0b",A, B,C,S,Cout);
  $dumpfile("full_adder.vcd");
  $dumpvars(1,full_adder_tb);
end
initial begin
  A=0 ;B=0 ;C=0;
  #10
  A=0 ;B=0 ;C=1;
  #10
  A=0 ;B=1 ;C=0;
  #10
  A=0 ;B=1 ;C=1;
  #10
  A=1 ;B=0 ;C=0;
  #10
  A=1 ;B=0 ;C=1;
  #10
  A=1 ;B=1 ;C=0;
  #10
  A=1 ;B=1 ;C=1;
  #10
$finish();
end
endmodule
