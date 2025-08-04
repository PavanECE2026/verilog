module parity_check (
    input [3:0] d, // includes parity bit
    output error
);
  assign error = ^d;  // 0 means correct, 1 means error
endmodule