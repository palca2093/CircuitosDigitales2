module testbench();

mux M1(sel,din_0,din_1,muxOut);
tester T1(sel,din_0,din_1);

initial

  begin
  $dumpfile("mux.vcd");
  $dumpvars;
    $display (" din_0 din_1 sel muxOut");
    $monitor ("  %b      %b    %b       %b",
    din_0, din_1, sel, muxOut);

  end
endmodule
