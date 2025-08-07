module sync_mem(clk,reset,addr,datain,dataout,wr,rd);
  parameter data=5;
  parameter address=7;
  input clk;
  input reset;
  input [address-1:0]addr;
  input [data-1:0]datain;
  input wr;
  input rd;
  output reg [data-1:0]dataout;
  
  reg [4:0]ram[120:0];
  
  always @(posedge clk) begin
    if(reset)
      dataout=0;
    else if (wr)
      ram[addr]<=datain;
    else if(rd)
      dataout<=ram[addr];
  end
endmodule