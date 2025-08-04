module shift_left_reg (
    input clk, rst, din,
    output reg [7:0] q
);
  always @(posedge clk or posedge rst) begin
    if(rst)
      q <= 8'b00000000;
    else
      q <= {q[6:0], din};
  end
endmodule