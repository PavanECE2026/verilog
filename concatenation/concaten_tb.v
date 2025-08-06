module Concatenation_tb;
  reg [1:0] a;
  reg [2:0] b;
  reg [3:0] c;
  wire [7:0] y1, y2, y3;
  Concatenation uut(
    .a(a),
    .b(b),
    .c(c),
    .y1(y1),
    .y2(y2),
    .y3(y3)
  );
  initial begin
    a = 2'b01;
    b = 3'b011;
    c = 4'b1011;
    #10
    $finish;
  end
  always@*
    $monitor("%t a=%b b=%b c=%b y1=%b,y2=%b,y3=%b,", $time, a, b, c, y1, y2, y3);
endmodule