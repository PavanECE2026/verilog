module moore11011_overlap(
  input x,clk,reset,
  output out,present,next);
  reg out;
  reg [2:0]present,next;
  parameter [2:0] s0 = 3'b000,
  s1 = 3'b001,
  s2 = 3'b010,
  s3 = 3'b011,
  s4 = 3'b100,
  s5 = 3'b101;
  always @ (posedge clk)
    begin if (reset==1)
      present<=s0;
  else
      present<=next;
  end
  always @(present,x)
    begin 
      case (present)
        s0:
          begin 
            out = 0;
            if (x==1)
              next = s1;
            else
              next = s0;
          end
        s1:
          begin
            out = 0;
            if (x==1)
              next = s2;
            else
              next = s0;
          end
        s2:
          begin 
            out = 0;
            if (x==0)
              next = s3;
            else
              next = s2;
          end
        s3:
          begin
            out = 0;
            if (x==1)
              next = s4;
            else
              next = s0;
          end
         s4:
          begin
            out = 0;
            if (x==1)
              next = s5;
            else
              next = s0;
          end
             s5:
          begin
            out = 1;
            if (x==1)
              next = s2;
            else
              next = s3;
          end
      endcase
    end
endmodule