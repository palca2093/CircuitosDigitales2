`timescale 1ns/1ps
module mux(
  input wire sel,
  input wire reset,
  input wire [3:0] din_0,
  input wire [3:0] din_1,
  output reg [3:0] muxOut);


  always @(*)
    begin
      if(!reset)
        begin
          if(sel==0)
            begin
              muxOut = din_0;
            end
          else
            begin
              muxOut = din_1;
            end
          end
      else
        begin
          muxOut = 4'b0000;
        end
    end
endmodule
