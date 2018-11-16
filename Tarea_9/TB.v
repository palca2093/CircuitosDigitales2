`timescale 1ns / 100ps
`include "tester.v"
`include "Sumador_pipe.v"
`include "Sumador_pipe_synth.v"
`include "cmos_cells.v"

module TB;

   wire clk;
   wire reset;
   wire [3:0] idx_dd_cond;
   wire [3:0] sum30_dd;
   wire [3:0] idx_dd_synth;
   wire [3:0] sum30_dd_synth;
   wire [3:0] idx;
   wire [3:0] dataA;
   wire [3:0] dataB;

   Tester T1 (.clk (clk), .idx_dd_cond (idx_dd_cond), .idx_dd_synth (idx_dd_synth), .reset (reset), .idx (idx),
              .dataA (dataA), .dataB (dataB), .sum30_dd_cond (sum30_dd), .sum30_dd_est (sum30_dd_synth)
              );

   Sumador_pipe S1 (.clk (clk),.idx_dd (idx_dd_cond),.reset (reset),.idx (idx),.dataA (dataA),.dataB (dataB),
                    .sum30_dd (sum30_dd)
                    );

   Sumador_synth_pipe S1_synth (.clk (clk),.idx_dd (idx_dd_synth),.reset (reset),.idx (idx),.dataA (dataA),.dataB (dataB),
                                .sum30_dd (sum30_dd_synth)
                                );
endmodule // testbench
