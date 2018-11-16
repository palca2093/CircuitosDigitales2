/* Generated by Yosys 0.7 (git sha1 61f6811, i686-w64-mingw32.static-gcc 4.9.3 -Os) */

(* src = "FSM.v:3" *)
module \$paramod\FSM_est\BUS_SIZE=16\NUM_MEM_UNITS=4 (clk, reset, data_in, data_out, WORD_NUM, next_state, state);
  (* src = "FSM.v:21" *)
  reg _00_;
  (* src = "FSM.v:21" *)
  reg _01_;
  (* src = "FSM.v:21" *)
  reg [3:0] _02_;
  (* src = "FSM.v:21" *)
  reg [3:0] _03_;
  (* src = "FSM.v:16" *)
  reg [3:0] _04_;
  (* src = "FSM.v:21" *)
  reg [3:0] _05_;
  (* src = "FSM.v:17" *)
  wire _06_;
  (* src = "FSM.v:31" *)
  wire _07_;
  (* src = "FSM.v:43" *)
  wire _08_;
  (* src = "FSM.v:55" *)
  wire _09_;
  (* src = "FSM.v:30" *)
  wire _10_;
  (* src = "FSM.v:42" *)
  wire _11_;
  (* src = "FSM.v:54" *)
  wire _12_;
  (* src = "FSM.v:11" *)
  output WORD_NUM;
  reg WORD_NUM;
  (* src = "FSM.v:7" *)
  input clk;
  (* src = "FSM.v:15" *)
  reg control;
  (* src = "FSM.v:9" *)
  input [3:0] data_in;
  (* src = "FSM.v:10" *)
  output [3:0] data_out;
  reg [3:0] data_out;
  (* src = "FSM.v:12" *)
  output [3:0] next_state;
  reg [3:0] next_state;
  (* src = "FSM.v:8" *)
  input reset;
  (* src = "FSM.v:13" *)
  output [3:0] state;
  reg [3:0] state;
  assign _06_ = ~ (* src = "FSM.v:17" *) reset;
  assign _07_ = & (* src = "FSM.v:31" *) data_in;
  assign _08_ = & (* src = "FSM.v:43" *) data_in;
  assign _09_ = & (* src = "FSM.v:55" *) data_in;
  assign _10_ = | (* src = "FSM.v:30" *) data_in;
  assign _11_ = | (* src = "FSM.v:42" *) data_in;
  assign _12_ = | (* src = "FSM.v:54" *) data_in;
  always @* begin
    _04_ = state;
    casez (_06_)
      1'b1:
          _04_ = 4'b0001;
      default:
          _04_ = next_state;
    endcase
  end
  always @(posedge clk) begin
      state <= _04_;
  end
  always @* begin
    _01_ = control;
    _02_ = 4'b0000;
    _00_ = 1'b0;
    _03_ = _05_;
    casez (state)
      4'b0001:
        begin
          _05_ = state;
          _02_ = data_in;
          _00_ = _10_;
          _01_ = _07_;
          casez (control)
            1'b1:
                _05_ = 4'b0010;
            default:
                _05_ = 4'b0100;
          endcase
        end
      4'b0010:
        begin
          _05_ = state;
          _02_ = data_in;
          _00_ = _11_;
          _01_ = _08_;
          casez (control)
            1'b1:
                _05_ = 4'b0010;
            default:
                _05_ = 4'b0100;
          endcase
        end
      4'b0100:
        begin
          _05_ = state;
          _02_ = data_in;
          _00_ = _12_;
          _01_ = _09_;
          casez (control)
            1'b1:
                _05_ = 4'b0001;
            default:
                _05_ = 4'b0100;
          endcase
        end
      default:
        begin
          _05_ = 4'b0001;
          _02_ = 4'b0000;
          _00_ = 1'b0;
        end
    endcase
  end
  always @* begin
      data_out <= _02_;
      WORD_NUM <= _00_;
      next_state <= _03_;
      control <= _01_;
  end
endmodule

(* top =  1  *)
(* src = "Generator_cond.v:3" *)
module Generator_est(clk, reset, data_in, data_out, WORD_NUM);
  (* src = "Generator_cond.v:11" *)
  output [3:0] WORD_NUM;
  (* src = "Generator_cond.v:7" *)
  input clk;
  (* src = "Generator_cond.v:9" *)
  input [15:0] data_in;
  (* src = "Generator_cond.v:10" *)
  output [15:0] data_out;
  (* src = "Generator_cond.v:8" *)
  input reset;
  (* src = "Generator_cond.v:17" *)
  \$paramod\FSM_est\BUS_SIZE=16\NUM_MEM_UNITS=4  \MEM[0].mem_unit  (
    .WORD_NUM(WORD_NUM[0]),
    .clk(clk),
    .data_in(data_in[3:0]),
    .data_out(data_out[15:12]),
    .reset(reset)
  );
  (* src = "Generator_cond.v:17" *)
  \$paramod\FSM_est\BUS_SIZE=16\NUM_MEM_UNITS=4  \MEM[1].mem_unit  (
    .WORD_NUM(WORD_NUM[1]),
    .clk(clk),
    .data_in(data_in[7:4]),
    .data_out(data_out[11:8]),
    .reset(reset)
  );
  (* src = "Generator_cond.v:17" *)
  \$paramod\FSM_est\BUS_SIZE=16\NUM_MEM_UNITS=4  \MEM[2].mem_unit  (
    .WORD_NUM(WORD_NUM[2]),
    .clk(clk),
    .data_in(data_in[11:8]),
    .data_out(data_out[7:4]),
    .reset(reset)
  );
  (* src = "Generator_cond.v:17" *)
  \$paramod\FSM_est\BUS_SIZE=16\NUM_MEM_UNITS=4  \MEM[3].mem_unit  (
    .WORD_NUM(WORD_NUM[3]),
    .clk(clk),
    .data_in(data_in[15:12]),
    .data_out(data_out[3:0]),
    .reset(reset)
  );
endmodule
