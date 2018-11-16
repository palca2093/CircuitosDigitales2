`include "contador_gray_cond.v"
`include "contador_gray_synth.v"
`include "cmos_cells.v"
`include "contador_Tester.v"
module contador_TB ();
     wire clk;
     wire enable;
     wire reset_L;
     wire [4:0] salida_gray_cond;
     wire [4:0] salida_gray_est;


   contador_Tester T_1(
        .clk(clk),
        .reset_L(reset_L),
        .enable(enable),
        .salida_gray_cond(salida_gray_cond),
        .salida_gray_est(salida_gray_est)
        );

   contador_gray_cond Gray_cond(
       .clk(clk),
       .reset_L(reset_L),
       .enable(enable),
       .salida_gray(salida_gray_cond)
        );

   contador_gray_synth Gray_est(
       .clk(clk),
       .reset_L(reset_L),
       .enable(enable),
       .salida_gray(salida_gray_est)
        );

   initial
     begin
	$dumpfile("Gray.vcd");
	$dumpvars();
	#100 $finish();
     end

endmodule
