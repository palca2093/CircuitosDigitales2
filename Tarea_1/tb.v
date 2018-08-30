module tb();

boton boton_1(sluz,clk,reset,toggle);
probador probador_1(sluz,clk,reset,toggle);

initial

  begin
  $dumpfile("Boton.vcd");
  $dumpvars;
    $display ("clk   reset   toggle   sluz");
    $monitor (" %b    %b      %b       %b",
    clk, reset, toggle, sluz);

  end
endmodule
