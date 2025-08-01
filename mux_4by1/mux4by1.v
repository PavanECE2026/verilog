module mux4by1
  ( input s1,s0,i0,i1,i2,i3,
    output f);
    wire s1bar,s0bar,w,x,y,z;
  not(s1bar,s1),(s0bar,s0);
  and(w,i0,s1bar,s0bar);
  and(x,i1,s1bar,s0);
  and(y,i2,s1,s0bar);
  and(z,i3,s1,s0);
  or(f,w,y,x,z);
endmodule