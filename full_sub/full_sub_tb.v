module fullsubtractor_tb;
  reg a,b,c;
  wire diff,borrow;
  fullsubtractor fs(.a(a),.b(b),.c(c),.diff(diff),.borrow(borrow));
  initial begin
    $monitor("a=%d b=%d c=%d diff=%d borrow=%d",a,b,c,diff,borrow);
    $dumpfile("fullsutractor.vcd");
    $dumpvars(1,fullsubtractor_tb);
  end
  initial begin
    a=1'b0; b=1'b0; c=1'b0;
    #25
    a=1'b0; b=1'b0; c=1'b1;
    #25
    a=1'b0; b=1'b1; c=1'b0;
    #25 
    a=1'b0; b=1'b1; c=1'b1;
    #25 
    a=1'b1; b=1'b0; c=1'b0;
    #25 
    a=1'b1; b=1'b0; c=1'b1;
    #25 
    a=1'b1; b=1'b1; c=1'b0;
    #25 
    a=1'b1; b=1'b1; c=1'b1;
    #25
    $finish();
  end
endmodule