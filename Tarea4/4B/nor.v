`timescale 1ns/1ps
module Noor(A,B,Y);
  input A;
  input B;
  output Y;

  wire A;
  wire B;
  reg Y;

  always @(*)
    begin
      if(A==0 && B==0)
        begin
//         #3.1
        Y=1;
        end
      else
        begin
//          #3.1
           Y=0;
        end
    end


    integer VDD = 5;
	  real    CL  = 55e-12;
	  real    power;
	  integer counter = 0;

	always @(Y)
		counter <= counter + 1;

	always @(*)
	power = VDD * VDD * CL * counter;

endmodule
