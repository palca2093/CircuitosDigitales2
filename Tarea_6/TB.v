module testbench();

output wire [3:0] din_0;
output wire [3:0] din_1;
output wire [3:0] muxOut;


mux M1(sel,reset,din_0,v_0,din_1,v_1,muxOut,v_out);
tester T1(sel,reset,din_0,v_0,din_1,v_1);

initial

  begin
  $dumpfile("Mux.vcd");
  $dumpvars;
    $display ("reset din_0  v_0  din_1  v_1  sel muxOut  v_out");
    $monitor ("  %b    %b   %b  %b     %b   %b  %b    %b",
    reset, din_0, v_0, din_1, v_1, sel, muxOut, v_out);

  end
endmodule
