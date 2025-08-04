module seq_det_101 (
    input clk, rst, din,
    output reg dout
);
  reg [1:0] state;
  parameter S0=2'b00, S1=2'b01, S2=2'b10;

  always @(posedge clk or posedge rst) begin
    if(rst) begin
      state <= S0; dout <= 0;
    end else begin
      case(state)
        S0: if(din) state<=S1; else state<=S0;
        S1: if(~din) state<=S2; else state<=S1;
        S2: if(din) begin dout<=1; state<=S1; end
            else state<=S0;
      endcase
    end
  end
endmodule