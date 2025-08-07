module sync_ram_2(input reg clk,
                 input reset,
                  input reg[4:0] data_in,
                  input reg [6:0]address,
                input write,
                input read,
                  output reg[4:0] data_out);
  reg[4:0]ram[128:0];
  always @(posedge clk)begin
    if(reset)
      data_out<=0;
    else if(clk==1 && write==1 && read==0)
      ram[address]<=data_in;
    else if(clk==1 && write==0 && read==1)
      data_out<=ram[address];
  end
endmodule