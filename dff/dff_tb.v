
module dff_tb;
reg data, clk, reset ; 
wire q;
dff dffr (.data(data), .clk(clk), .reset(reset) ,.q(q));
initial begin
  $monitor("t=%d data=%d clk=%d reset=%d q=%d",$time,data,clk,reset,q);
  $dumpfile("dff.vcd");
  $dumpvars(1,dff_tb);
end
  initial begin
    clk=0;
    data = 0;
    reset = 1;
    #5 reset = 0;
    #40 $finish;
end
always #5 clk = ~clk;
always #10 data = ~data;
endmodule