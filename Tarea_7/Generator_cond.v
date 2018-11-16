`include "FSM.v"

module Generator_cond #(
	parameter BUS_SIZE = 16,
	parameter NUM_MEM_UNITS = 4,
	parameter WORD_SIZE = BUS_SIZE / NUM_MEM_UNITS) (
	input clk,
  input reset,
	input [BUS_SIZE-1:0] data_in,
	output [BUS_SIZE-1:0] data_out,
  output [BUS_SIZE/NUM_MEM_UNITS-1:0] WORD_NUM
);

genvar i;
generate
	for (i=0; i < NUM_MEM_UNITS; i=i+1) begin : MEM
     		FSM 	#(
          .BUS_SIZE	(BUS_SIZE),
          .NUM_MEM_UNITS	(NUM_MEM_UNITS)
					) mem_unit (
					.clk		(clk),
					.data_in	(data_in	[(i*WORD_SIZE)+:WORD_SIZE]),
					.data_out	(data_out	[(15-i*WORD_SIZE)-:4]),
          .WORD_NUM (WORD_NUM [i*1+:1] ),
          .reset (reset)
					);
	end
endgenerate

endmodule
