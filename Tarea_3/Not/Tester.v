module Tester(A);
output reg A;

initial begin

//Modulo probador donde se indica lo que va a pasar durante la prueba
  $display("Prueba 1, A=0");
  A<=0;
  #10;

  $display("Prueba 2, A=1");
  A<=1;
  #10;

	$monitor("Resultado final de la prueba en tiempo de: %g ps, A: %b, Q: %d, Numero de cambios: %g, Potencia consumida: %g", $time, A, Not_1.Q, Not_1.Counter,Not_1.Power);
  end
endmodule
