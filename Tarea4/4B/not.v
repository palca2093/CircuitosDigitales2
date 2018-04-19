`timescale 1ns/1ps
module Not(A,Y);
  input A;
  output Y;

  wire A;
  reg Y;


    integer VDD = 5;
	  real    CL  = 50e-12;
	  real    power;
	  integer counter = 0;

  always @(A)
//    #5.5
      Y = ~A;

	always @(Y)
		counter <= counter + 1;

	always @(*)
	power = VDD * VDD * CL * counter;

endmodule
