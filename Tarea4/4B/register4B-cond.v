module reg_desp(q,s_out,clk,enb,dir,s_in,mode,d);
input clk,enb,dir,s_in;
input [1:0] mode;
input [3:0] d;
output reg [3:0] q;
output reg s_out;
always @(posedge clk)
  begin
    if(enb==1'b1)
      begin
        if(mode==2'b00)
          begin
            if(dir==1'b0)
              begin
                q<={q[2:0],s_in};
                s_out<=q[3];
              end
            else if(dir==1'b1)
              begin
                q<={s_in,q[3:1]};
                s_out<=q[0];
              end
          end
        else if(mode ==2'b01)
          begin
            if(dir==1'b0)
              begin
                s_out<=0;
                q<={q[2:0],q[3]};
              end
            else if(dir==1'b1)
              begin
                s_out<=0;
                q<={q[0],q[3:1]};
              end
          end
        else if(mode == 2'b10)
          begin
            s_out<=0;
            q<=d;
          end
      end
  end
endmodule
