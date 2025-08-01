module binary_to_grey_tb;
  reg b1,b2,b3,b4;
  wire g1,g2,g3,g4;
  binary_to_grey btg(.b1(b1),.b2(b2),.b3(b3),.b4(b4),.g1(g1),.g2(g2),.g3(g3),.g4(g4));
 initial begin
   $monitor("b1=%0d b2=%0d b3=%0d b4=%0d g1=%0d g2=%0d g3=%0d g4=%0d",b1,b2,b3,b4,g1,g2,g3,g4);
    $dumpfile("binary_to_grey.vcd");
    $dumpvars(1,binary_to_grey_tb);
  end
  initial begin 
    b1=0; b2=0; b3=0; b4=0;
    #10
    b1=0; b2=0; b3=0; b4=1;
    #10
    b1=0; b2=0; b3=1; b4=0;
    #10
    b1=0; b2=0; b3=1; b4=1;
    #10
    b1=0; b2=1; b3=0; b4=0;
    #10
    b1=0; b2=1; b3=0; b4=1;
    #10
    b1=0; b2=1; b3=1; b4=0;
    #10
    b1=0; b2=1; b3=1; b4=1;
    #10
    b1=1; b2=0; b3=0; b4=0;
    #10
    b1=1; b2=0; b3=0; b4=1;
    #10
    b1=1; b2=0; b3=1; b4=0;
    #10
    b1=1; b2=0; b3=1; b4=1;
    #10
    b1=1; b2=1; b3=0; b4=0;
    #10
    b1=1; b2=1; b3=0; b4=1;
    #10
    b1=1; b2=1; b3=1; b4=0;
    #10
    b1=1; b2=1; b3=1; b4=1;
    #10
    $finish;
  end
endmodule