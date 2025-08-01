module Bcd_excess3_tb;
reg [3:0] b;
wire [3:0] e;
Bcd_excess3 uut (.b(b),.e(e));
initial begin
  $monitor("b[0]=%d b[1]=%d b[2]=%d b[3]=%d e[0]=%d e[1]=%d e[2]=%d e[3]=%d",b[0],b[1],b[2],b[3],e[0],e[1],e[2],e[3]);
  $dumpfile("Bcd_excess3.vcd");
  $dumpvars(1,Bcd_excess3_tb);
b=3'b0000;
#10;
b=4'b0001;
#10;
b=4'b0010;
#10;
b=4'b0011;
#10;
b=4'b0100;
#10;
b=4'b0101;
#10;
b=4'b0110;
#10;
b=4'b0111;
#10;
b=4'b1000;
#10;
b=4'b1001;
  $finish;
end
endmodule