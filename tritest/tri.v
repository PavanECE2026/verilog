module tritest();
 wire w1, w2, w3, w4;
 tri0 t01, t02, t03, t04;
 tri t1, t2, t3, t4;
 tri1 t11, t12, t13, t14;
 assign w1 = 0;
 assign t1 = 0;
 assign t01 = 0;
 assign t11 = 0;
 assign w2 = 1'bz;
 assign t2 = 1'bz;
 assign t02 = 0;
 assign t12 = 1'bz;
assign w3 = 1;
assign t3 = 1;
assign t03 = 0;
assign t13 = 1;
initial
begin
 #1;
 $display(w1, w2, w3, w4);
 $display(t1, t2, t3, t4);
 $display(t01, t02, t03, t04);
 $display(t11, t12, t13, t14);
 #50 $finish();
end
endmodule