module full_adder
  ( input a,b,cin,
    output sum,carry );
wire x,y,z;
  halfadder ha1(.a(a),.b(b),.sum(x),.carry(y));
  halfadder ha2(.a(x),.b(cin),.sum(sum),.carry(z));
  or(carry,z,y);
endmodule
module halfadder(
   input a,b,
   output sum,carry);
  xor(sum,a,b);
  and(carry,a,b);
endmodule