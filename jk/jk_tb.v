module jk_ff_tb;
reg j,k,clk; 
wire q,qbar;
  jk_ff jk_ff(.j(j),.k(k),.clk(clk),.q(q),.qbar(qbar));
initial begin
  $dumpfile("jk_ff.vcd");
  $dumpvars(1,jk_ff_tb);
  $monitor(" t=%d j=%b k=%b clk=%b q=%b qbar=%b",$time,j,k,clk,q,qbar);
end
initial begin
  clk=0;
  k=1;
  j=0;
  
  #20
  $finish;
end
always #2 j = ~j;
always #3 k = ~k; 
  always #4 clk=~clk;
endmodule