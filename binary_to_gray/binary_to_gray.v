module binary_to_grey
  (input b1,b2,b3,b4,
   output g1,g2,g3,g4);
  buf(g1,b1);
  xor(g2,b2,b1);
  xor(g3,b3,b2);
  xor(g4,b4,b3);
endmodule