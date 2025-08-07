module memory(
  input clk,
  input reset,
  input write,
  input [2:0]data_in,
  input [4:0]addr,
  output reg [2:0]data_out);
  
  reg [2:0]ram[15:0];
  always @(posedge clk) begin
     if(write)
      ram[addr]<=data_in;
    else
      data_out<=ram[addr];
  end
endmodule
  