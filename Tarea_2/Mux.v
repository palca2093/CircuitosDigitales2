`timescale 1ns/1ps
module mux(
  input sel,
  input reset,
  input [3:0] din_0,
  input [3:0] din_1,
  output reg [3:0] muxOut);


  always @(*)
    begin
      if(!reset)
        begin
          if(sel==0)
            begin
              if(din_0 == 0)
                muxOut <= din_0;
              else
                muxOut <= din_0;
            end

          else if(sel == 1)
            begin
              if(din_1 == 1)
              muxOut <= din_1;
              else
              muxOut <= din_1;
            end
          end
        else begin
          muxOut <= 4'b0000;
        end
    end
endmodule
