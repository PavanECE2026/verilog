module jk_ff(
  input j,
  input k,
  input clk,
  output reg q,
  output qbar);
  initial
    q=0;
  always @(posedge clk or j or k)
    begin
      if(clk==0)
        q=q;
      
      else if(j==0 && k==0)
        q=q;
      else if(j==1 && k==1)
        q= ~q;
      else 
        q=j;
    end
  assign qbar=~q;
endmodule