// Code demux1by4 testbench 
module demux1by4_tb;
  reg s0,s1,i;
  wire y0,y1,y2,y3;
  demux1by4 demux(.s0(s0),.s1(s1),.i(i),.y0(y0),.y1(y1),.y2(y2),.y3(y3));
initial begin
    $monitor("s0=%0d s1=%0d i=%0d y0=%0d y1=%0d y2=%0d y3=%0d",s0,s1,i,y0,y1,y2,y3);
    $dumpfile("demux1by4.vcd");
    $dumpvars(1,demux1by4_tb);
end
initial begin
  s0=0; s1=0;i=1;
  #10
  s0=0; s1=1;i=1;  
  #10
  s0=1; s1=0;i=1;
  #10
  s0=1; s1=1;i=1;
  #10
  $finish;
end
endmodule