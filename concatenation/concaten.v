module Concatenation(
  input [1:0] a,
  input [2:0] b,
  input [3:0] c,
  output reg [7:0] y1, y2, y3
);
  assign y1 = {a,b};
  assign y2 = {a,c};
  assign y3 = {a,b,c};
endmodule