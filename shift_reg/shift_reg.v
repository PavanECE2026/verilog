module Shift_register(
  input clk,
  input reset,
  input [3:0] in,
  input [1:0] s,
  output reg [3:0] out
);
  
  always @(posedge clk or posedge reset) begin
    
    if (reset)
      out <= 4'b0000;
    
    else
      case(s)
        1'b0: out <= {in, out[3:1]};
        
        1'b1: out <= {out[2:0],in};
        
      endcase
  
  end
  
endmodule