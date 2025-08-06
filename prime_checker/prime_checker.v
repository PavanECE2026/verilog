module PrimeChecker (
  input reg [7:0]a);
  always @(*)begin
    if((a==2)||(a%2==1)&&(a%3==1)||(a%3==2))
      $display("It is a prime number",a);
    else
      $display("It is a composite number",a);
  end
endmodule