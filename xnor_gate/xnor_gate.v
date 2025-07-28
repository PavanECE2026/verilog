// Code for xnor gate
module xnor_gate(
  input a,
  input b,
  output y
);
 nor(y,a,b);
 endmodule