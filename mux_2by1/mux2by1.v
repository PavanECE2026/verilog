module mux2by1
  ( input s,a,b,
    output f);
    wire x,y,z;
  not(x,s);
  and(y,x,a);
  and(z,s,b);
  or(f,y,z);
endmodule