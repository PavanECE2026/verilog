module test_wor();
 wor a;
 reg b, c;
 assign a = b;
 assign a = c;
 
 initial begin
 $monitor("%t a = %b b = %b c = %b", $time, a, b, c);
 #1 b = 0;
 #1 c = 0;
 #1 b = 1;
 #1 b = 0;
 #1 c = 1;
 #1 b = 1;
 #1 b = 0;
 #1 $finish;
 end
 endmodule