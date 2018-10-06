`timescale 1ns/1ps
module mux(
  input wire sel,
  input wire reset,
  input wire [3:0] din_0,
  input wire v_0,
  input wire [3:0] din_1,
  input wire v_1,
  output reg [3:0] muxOut,
  output reg v_out);


  always @(*)
    begin
    muxOut = 0;
    v_out = 0;
      if(!reset)
        begin
          if(sel==0)
            begin
              if(v_0==1)
                begin
                  muxOut = din_0;
                  v_out = 1;
                end
              else
                begin
                  v_out = 0;
                end
            end
          else
            begin
              if(v_1==1)
                begin
                  muxOut = din_1;
                  v_out = 1;
                end
              else
                begin
                  v_out = 0;
                end
            end
          end
      else
        begin
          muxOut = 4'b0000;
        end
    end
endmodule
