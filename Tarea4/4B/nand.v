`timescale 1ns/1ps
module Noand(A,B,Y);
  input A;
  input B;
  output Y;

  wire A;
  wire B;
  reg Y;

  always @(*)
    begin
      if(A==1 && B==1)
        begin
//          #4.4
            Y=0;
        end
      else
        begin
//          #5
            Y=1;
        end
    end


    integer VDD = 5;
	  real    CL  = 50e-12;
	  real    power;
	  integer counter = 0;

	always @(Y)
		counter <= counter + 1;

	always @(*)
	power = VDD * VDD * CL * counter;

endmodule
