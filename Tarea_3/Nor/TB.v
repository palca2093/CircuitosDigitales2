module testbench();

//De esta manera se conectan los modulos de pueba y el de nor
Nor Nor_1(A,B,Q);
Tester Tester_1(A,B);

initial
  begin
  $dumpfile("Nor.vcd");
  $dumpvars;
  //Se imprimen los datos de cada entrada/salida
    $display (" A  B  Q");
    $monitor (" %b  %b  %b",
   A, B, Q);

  end


endmodule
