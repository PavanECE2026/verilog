module updown_counter (
    input clk, rst, up,
    output reg [3:0] q
);
  always @(posedge clk or posedge rst) begin
    if (rst)
      q <= 0;
    else if (up)
      q <= q + 1;
    else
      q <= q - 1;
  end
endmodule