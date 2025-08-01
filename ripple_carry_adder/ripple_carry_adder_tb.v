module rca_tb;
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire c4;
rca uut(a,b,cin,sum,c4);
  initial begin
    $monitor("a[0]=%d a[1]=%d a[2]=%d a[3]=%d b[0]=%d b[1]=%d b[2]=%d b[3]=%d cin=%d sum[0]=%d sum[1]=%d sum[2]=%d sum[3]=%d c4=%d",a[0],a[1],a[2],a[3],b[0],b[1],b[2],b[3],cin,sum[0],sum[1],sum[2],sum[3],c4);
    $dumpfile("rca.vcd");
    $dumpvars(1,rca_tb);
  end
initial begin
cin = 0;
a = 4'b0110;
b = 4'b1100;
#10
a = 4'b1110;
b = 4'b1000;
#10
a = 4'b0111;
b = 4'b1110;
#10
a = 4'b0010;
b = 4'b1001;
#10
$finish();
end
endmodule