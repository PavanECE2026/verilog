module tff_async(
  input t,clk,reset,
  output reg q);
  always @(posedge clk or negedge reset or t) //making output 0 in reset0
   
    if(reset==0)
      begin
        q <=1'b0;
      end
  else if(t==1)
      begin
      q <=~q;
    end
endmodule