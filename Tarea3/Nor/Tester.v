module Tester(A,B);
output reg A;
output reg B;

initial begin

//Modulo probador donde se indica lo que va a pasar durante la prueba
  $display("Prueba 1, A=0 y B=0");
  A<=0;
  B<=0;
  #30;

  $display("Prueba 2, A=0 y B=1");
  B<=1;
  #30;

  $display("Prueba 3, A=1 y B=0");
  A<=1;
  B<=0;
  #30;

  $display("Prueba 4, A=1 y B=1");
  B<=1;
  #30;

	$monitor("Resultado final de la prueba en tiempo de: %g ps, A: %b, B: %b, Q: %d, Numero de cambios: %g, Potencia consumida: %g", $time, A, B, Nor_1.Q, Nor_1.Counter,Nor_1.Power);
  end
endmodule
