module fullsubtractor (
input a,b,c,
output diff, borrow);
wire u,v,w,x,y;
not (v,c);
not (y,u);
and(x,v,b);
and(w,y,a);
xor (u,b,c);
xor (diff,a,u);
or (borrow,x,w);
endmodule