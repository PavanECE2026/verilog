module parity_gen (
    input [2:0] d,
    output parity
);
  assign parity = ^d; // XOR of all bits
endmodule