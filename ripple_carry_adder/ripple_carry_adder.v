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
module rca(
    input [3:0]a,b,
    input cin,
    output [3:0]sum,
    output c4);
wire c1,c2,c3;
full_adder fa0(a[0],b[0],cin,sum[0],c1);
full_adder fa1(a[1],b[1],c1,sum[1],c2);
full_adder fa2(a[2],b[2],c2,sum[2],c3);
full_adder fa3(a[3],b[3],c3,sum[3],c4);      
endmodule