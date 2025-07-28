// Code for xor gate
module xor_gate(
  input a,
  input b,
  output y
);
 nor(y,a,b);
 endmodule