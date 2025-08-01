module dff ( 
  input data , // Data Input
  input clk , // Clock Input
  input reset , // Reset input
  output q // Q output
);
  reg q;
  always @ ( posedge clk or reset)
    begin
      if (!reset)
        q <= data;
      else if(reset)
        q <= 1'b0;
    end
endmodule