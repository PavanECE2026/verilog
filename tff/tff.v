module tff(
  output q,
  input t,clk);
  reg q;
  initial
    q=0;
  always @ (posedge clk)
    begin
      if (t==1)
        q=~q;
      else if(t==0)
        q=q;
    end
endmodule