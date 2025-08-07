module sync_ram_2_tb;
  reg clk,reset,write,read;
  reg[4:0] data_in;
  reg[6:0] address;
  wire[4:0] data_out;
  sync_ram_2 sync_ram_2(.clk(clk),.reset(reset),.data_in(data_in),.data_out(data_out),.write(write),.read(read),.address(address));
  always #5clk=~clk;
  initial begin
    clk=0;
    reset=1;
    #5reset=0;
  end
  initial begin
    write=1;data_in=5'b00001;address=7'b0010001;read=0;
    #10 read=1;write=0;
    #20write=1;data_in=5'b01000;address=7'b0110011;read=0;
    #10 read=1;write=0;
    #40$finish;
  end
  initial begin
    $monitor(" t=%d reset=%b clk=%b data_in=%b write=%b read=%b address=%b data_out=%b",$time,reset,clk,data_in,write,read,address,data_out);
  end
endmodule