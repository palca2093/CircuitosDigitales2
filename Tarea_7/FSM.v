`include "Definitions.v"
`timescale 1ns / 1ps
module FSM #(
	parameter BUS_SIZE = 16,
  parameter NUM_MEM_UNITS = 4,
  parameter WORD_SIZE = BUS_SIZE / NUM_MEM_UNITS) (
	input clk,
  input reset,
	input [WORD_SIZE-1:0] data_in,
	output reg [WORD_SIZE-1:0] data_out,
  output reg WORD_NUM,
  output reg [3:0] next_state,
  output reg [3:0] state
);
reg control;
always @(posedge clk) begin
  if (~reset) state <= `RESET;
  else  state<= next_state;
end

always @(*) begin
    data_out = 0;
    WORD_NUM = 0;
    next_state = state;

    case (state)

      `RESET: begin
      data_out <= data_in;
      WORD_NUM <=|data_in;
      control <=&data_in;
      if (control) begin
          next_state<=`VALID;
      end
      else begin
          next_state<=`ERROR;
      end
      end

      `VALID: begin
      data_out <= data_in;
      WORD_NUM <=|data_in;
      control <=&data_in;
      if (control) begin
          next_state<=`VALID;
      end
      else begin
          next_state<=`ERROR;
      end
      end

      `ERROR: begin
      data_out <= data_in;
      WORD_NUM <=|data_in;
      control <=&data_in;
      if (control) begin
          next_state<=`RESET;
      end
      else begin
          next_state<=`ERROR;
      end
      end

      default: begin
        next_state = `RESET;
        data_out <= 0;
        WORD_NUM <= 0;
      end

    endcase

  end

endmodule
