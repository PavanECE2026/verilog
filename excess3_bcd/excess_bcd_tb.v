module xs3_bcd_tb;
  reg e3,e2,e1,e0;
  wire b3,b2,b1,b0;
  xs3_bcd xs3_bcd(.b3(b3),.b2(b2),.b1(b1),.b0(b0),.e3(e3),.e2(e2),.e1(e1),.e0(e0));
  initial begin
    $dumpfile("xs3_bcd.vcd");
    $dumpvars(1,xs3_bcd_tb);
    $monitor("e3=%d e2=%d e1=%d e0=%d b3=%d b2=%d b1=%d b0=%d",e3,e2,e1,e0,b3,b2,b1,b0);
  end
  initial begin
    e3=0;e2=0;e1=1;e0=1;
    #10
    e3=0;e2=1;e1=0;e0=0;
    #10
    e3=0;e2=1;e1=0;e0=1;
    #10
    e3=0;e2=1;e1=1;e0=0;
    #10
    e3=0;e2=1;e1=1;e0=1;
    #10
    e3=1;e2=0;e1=0;e0=0;
    #10
    e3=1;e2=0;e1=0;e0=1;
    #10
    e3=1;e2=0;e1=1;e0=0;
    #10
    e3=1;e2=0;e1=1;e0=1;
    #10
    e3=1;e2=1;e1=0;e0=0;
    #10$finish;
  end
 endmodule