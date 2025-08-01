module grey_to_binary
  (input g1,g2,g3,g4,
   output b1,b2,b3,b4);
  buf(b1,g1);
  xor(b2,g2,g1);
  xor(b3,b2,g3);
  xor(b4,b3,g4);
endmodule
  