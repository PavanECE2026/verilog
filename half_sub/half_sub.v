module halfsubtractor
  (input a,b,
   output diff,borrow);
  wire abar;
  not(abar,a);
  xor(diff,a,b);
  and(borrow,abar,b);
endmodule