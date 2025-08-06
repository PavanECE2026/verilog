module parity_gen_odd
  ( input a,b,c,
   output p);
  wire x;
  xor (x,b,c);
  xor (p,x,a);
endmodule