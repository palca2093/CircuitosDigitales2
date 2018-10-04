/* Generated by Yosys 0.7 (git sha1 61f6811, i686-w64-mingw32.static-gcc 4.9.3 -Os) */

(* top =  1  *)
(* src = "Mux.v:2" *)
module mux(sel, reset, din_0, din_1, muxOut);
  (* src = "Mux.v:10" *)
  wire [3:0] _0_;
  (* src = "Mux.v:5" *)
  input [3:0] din_0;
  (* src = "Mux.v:6" *)
  input [3:0] din_1;
  (* src = "Mux.v:7" *)
  output [3:0] muxOut;
  (* src = "Mux.v:4" *)
  input reset;
  (* src = "Mux.v:3" *)
  input sel;
  assign _0_[0] = sel ? (* src = "Mux.v:14" *) din_1[0] : din_0[0];
  assign _0_[1] = sel ? (* src = "Mux.v:14" *) din_1[1] : din_0[1];
  assign _0_[2] = sel ? (* src = "Mux.v:14" *) din_1[2] : din_0[2];
  assign _0_[3] = sel ? (* src = "Mux.v:14" *) din_1[3] : din_0[3];
  assign muxOut[0] = reset ? (* src = "Mux.v:12" *) 1'b0 : _0_[0];
  assign muxOut[1] = reset ? (* src = "Mux.v:12" *) 1'b0 : _0_[1];
  assign muxOut[2] = reset ? (* src = "Mux.v:12" *) 1'b0 : _0_[2];
  assign muxOut[3] = reset ? (* src = "Mux.v:12" *) 1'b0 : _0_[3];
endmodule
