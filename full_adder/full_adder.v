module full_adder
( input A,
input B,
input C,
output S, 
output Cout );
wire p,r,s;
xor (p,A,B);
xor (S,p,C);
and(r,p,C);
and(s,A,B);
or(Cout,r,s);
endmodule