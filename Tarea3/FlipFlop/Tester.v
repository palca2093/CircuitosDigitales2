module Tester(D,CLK);
  output reg D,CLK;

  //Seteamos el clock
  always
    begin
      #15 CLK <= ~CLK;
    end
  initial
    begin
      CLK=0;

//Modulo probador donde se indica lo que va a pasar durante la prueba
  $display("Prueba 1, D=0");
    D=0;
    #20;

  $display("Prueba 2, D=1");
    D<=1;
    #20;

    $monitor("Resultado final de la prueba en tiempo de: %g ps, D: %b, Q: %d, Numero de cambios: %g, Potencia consumida: %g", $time, D, Flipflop_1.Q, Flipflop_1.Counter,Flipflop_1.Power);
  $finish;
  end
endmodule
