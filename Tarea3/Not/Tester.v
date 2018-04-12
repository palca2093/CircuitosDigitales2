module Tester(A);
output reg A;

//valores iniciales
initial begin

  $display("Prueba 1, A=0");
  A<=0;
  #10;

  $display("Prueba 2, A=1");
  A<=1;
  #10;

	$monitor("A los %g ns, A: %b, Y: %d, cuenta %g, potencia %g", $time, A, Not_1.Q, Not_1.Counter,Not_1.Power);
  end
endmodule
