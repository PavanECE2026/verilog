module clk_div2 (
    input clk, rst,
    output reg clk_out
);
  always @(posedge clk or posedge rst) begin
    if(rst)
      clk_out <= 0;
    else
      clk_out <= ~clk_out;
  end
endmodule