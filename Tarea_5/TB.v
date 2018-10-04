module testbench();

output wire [3:0] din_0;
output wire [3:0] din_1;
output wire [3:0] muxOut;


mux M1(sel,reset,din_0,din_1,muxOut);
tester T1(sel,reset,din_0,din_1);

initial

  begin
  $dumpfile("Mux.vcd");
  $dumpvars;
    $display ("reset din_0   din_1   sel muxOut");
    $monitor ("  %b    %b   %b     %b   %b",
    reset, din_0, din_1, sel, muxOut);

  end
endmodule
