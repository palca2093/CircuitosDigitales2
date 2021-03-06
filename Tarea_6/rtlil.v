/* Generated by Yosys 0.7 (git sha1 61f6811, i686-w64-mingw32.static-gcc 4.9.3 -Os) */

(* top =  1  *)
(* src = "Mux.v:2" *)
module mux(sel, reset, din_0, v_0, din_1, v_1, muxOut, v_out);
  (* src = "Mux.v:13" *)
  wire [3:0] _00_;
  (* src = "Mux.v:13" *)
  wire _01_;
  (* src = "Mux.v:13" *)
  wire [3:0] _02_;
  (* src = "Mux.v:13" *)
  wire [3:0] _03_;
  (* src = "Mux.v:5" *)
  input [3:0] din_0;
  (* src = "Mux.v:7" *)
  input [3:0] din_1;
  (* src = "Mux.v:9" *)
  output [3:0] muxOut;
  (* src = "Mux.v:4" *)
  input reset;
  (* src = "Mux.v:3" *)
  input sel;
  (* src = "Mux.v:6" *)
  input v_0;
  (* src = "Mux.v:8" *)
  input v_1;
  (* src = "Mux.v:10" *)
  output v_out;
  assign _03_[0] = v_1 ? (* src = "Mux.v:33" *) din_1[0] : 1'b0;
  assign _03_[1] = v_1 ? (* src = "Mux.v:33" *) din_1[1] : 1'b0;
  assign _03_[2] = v_1 ? (* src = "Mux.v:33" *) din_1[2] : 1'b0;
  assign _03_[3] = v_1 ? (* src = "Mux.v:33" *) din_1[3] : 1'b0;
  assign _02_[0] = v_0 ? (* src = "Mux.v:21" *) din_0[0] : 1'b0;
  assign _02_[1] = v_0 ? (* src = "Mux.v:21" *) din_0[1] : 1'b0;
  assign _02_[2] = v_0 ? (* src = "Mux.v:21" *) din_0[2] : 1'b0;
  assign _02_[3] = v_0 ? (* src = "Mux.v:21" *) din_0[3] : 1'b0;
  assign _01_ = sel ? (* src = "Mux.v:19" *) v_1 : v_0;
  assign _00_[0] = sel ? (* src = "Mux.v:19" *) _03_[0] : _02_[0];
  assign _00_[1] = sel ? (* src = "Mux.v:19" *) _03_[1] : _02_[1];
  assign _00_[2] = sel ? (* src = "Mux.v:19" *) _03_[2] : _02_[2];
  assign _00_[3] = sel ? (* src = "Mux.v:19" *) _03_[3] : _02_[3];
  assign v_out = reset ? (* src = "Mux.v:17" *) 1'b0 : _01_;
  assign muxOut[0] = reset ? (* src = "Mux.v:17" *) 1'b0 : _00_[0];
  assign muxOut[1] = reset ? (* src = "Mux.v:17" *) 1'b0 : _00_[1];
  assign muxOut[2] = reset ? (* src = "Mux.v:17" *) 1'b0 : _00_[2];
  assign muxOut[3] = reset ? (* src = "Mux.v:17" *) 1'b0 : _00_[3];
endmodule
