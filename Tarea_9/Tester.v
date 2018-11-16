module Tester (
               input [3:0]      idx_dd_cond,
               input [3:0]      sum30_dd_cond,
               input [3:0]      idx_dd_synth,
               input [3:0]      sum30_dd_est,
               output reg       clk,
               output reg       reset,
               output reg [3:0] idx,
               output reg [3:0] dataA,
               output reg [3:0] dataB
               );

    initial clk <= 1;


    always #10 clk <= ~clk;

   initial begin
      $dumpfile("Sumador.vcd");
      $dumpvars;

      reset <= 0;
      idx <= 0;
      dataA <= 0;
      dataB <= 0;
      //Primera Suma
      #50;
      reset <= 1;
      dataA <= 'b0001;
      dataB <= 'b0010;
      //Segunda Suma
      #100;
      dataA <= 'b0101;
      dataB <= 'b1010;

      #150
      dataA <= 'b1101;
      dataB <= 'b1000;

      #200 $finish;

   end
endmodule // tester
