module TB();

//De esta manera se conectan los modulos de pueba y el de el FlipFlop
FlipFlop Flipflop_1(CLK,D,Q);
Tester Tester_1(D,CLK);

initial

  begin
  $dumpfile("FlipFlop.vcd");
  $dumpvars;
  //Se imprimen los datos de cada entrada/salida
    $display ("CLK     D    Q");
    $monitor (" %b      %b    %b",
    CLK, D, Q);

  end
endmodule
