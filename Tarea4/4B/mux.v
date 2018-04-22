`timescale 1ns/1ps
module mux(sel,din_0,din_1,muxOut);
  input sel, din_0,din_1;
  output muxOut;
  reg muxOut;

  always @(*)
    begin
      if(sel==0)
        begin
          if(din_0 == 0)
//            #12
            muxOut <= din_0;
          else
//            #20
            muxOut <= din_0;
        end

      else if(sel == 1)
        begin
          if(din_1 == 1)
//          #20
          muxOut <= din_1;
          else
//          #12
           muxOut <= din_1;
        end
    end

    integer VDD = 3;
	  real    CL  = 35e-12;
	  real    power;
	  integer counter = 0;

	always @(muxOut)
		  counter <= counter + 1;

	always @(*)
	power = VDD * VDD * CL * counter;

endmodule
