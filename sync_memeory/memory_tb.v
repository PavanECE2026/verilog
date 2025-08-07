module sync_mem_tb;
  reg clk,wr,rd,reset;
  reg [4:0]datain;
  reg [6:0]addr;
  wire [4:0]dataout;
  sync_mem aa(.clk(clk),.reset(reset),.wr(wr),.rd(rd),.datain(datain),.dataout(dataout),.addr(addr));
  
  initial begin
    $monitor("t=%d reset=%b clk=%b wr=%b rd=%b addr=%b datain=%b dataout=%b",$time,reset,clk,wr,rd,addr,datain,dataout);
  end
  initial begin
    reset=1;
    clk=0;
    #5 reset=0;
  end
  initial begin
    wr=1;rd=0;addr=7'b0001101;datain=5'b00011;
    #10 wr=0;rd=1;
    #30 $finish;
  end 
  always #5 clk=~clk;
endmodule