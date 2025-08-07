module memory_tb;
  reg clk;
  reg reset;
  reg write;
  reg [2:0]data_in;
  reg [4:0]addr;
  wire [2:0]data_out;
  memory memory(.clk(clk),.reset(reset),.write(write),.data_in(data_in),.addr(addr),.data_out(data_out));
  initial begin
    $monitor("t=%d reset=%b clk=%b write=%b addr=%b data_in=%b data_out=%b",$time,reset,clk,write,addr,data_in,data_out);
  end
  initial begin
    reset=1;
    clk=0;
    #5 reset=0;
  end
  initial begin
    #5 write=1;data_in=110;addr=00011;
    #10 write=0;
    #5 write=1;data_in=101;addr=00100;
    #10 write=0;
    #30 $finish;
  end
  always #5 clk=~clk;
endmodule