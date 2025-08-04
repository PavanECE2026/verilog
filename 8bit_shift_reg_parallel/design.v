module shift_reg_load (
    input clk, rst, load,
    input [7:0] din,
    output reg [7:0] q
);
  always @(posedge clk or posedge rst) begin
    if(rst) q <= 8'b0;
    else if(load) q <= din;
    else q <= {q[6:0], 1'b0}; // shift left
  end
endmodule