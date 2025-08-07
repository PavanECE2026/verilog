module mealy1101(
  input x,clk,reset,
  output out,present,next);
  reg out;
  reg [1:0]present,next;
  
  parameter [3:0] s0 = 2'b00,
                    s1 = 2'b01,
                    s2 = 2'b10,
                    s3 = 2'b11;
  always @ (posedge clk)
   begin if (reset==1)
      present <= s0;
     else 
      present <= next;
   end
  always @ (present,x)
    begin
      case (present)
        s0:
          begin 
            out = 0;
            if (x==1)
              next=s1;
            else
              next=s0;
          end
        s1:
          begin
            out = 0;
            if (x==1)
              next=s2;
            else
              next=s0;
          end
        s2:
          begin
            out = 0;
            if (x==0)
              next=s3;
            else
              next=s2;
          end
        s3:
          begin 
           // out = 1;
            if (x==1)
              begin
              next=s0;
              out =1;
              end
            else
              begin
              next=s0;
              out =0;
          end
          end
      endcase
    end
endmodule