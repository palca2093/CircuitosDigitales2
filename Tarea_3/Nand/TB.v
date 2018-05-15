module TB();

//De esta manera se conectan los modulos de pueba y el de nand
Nand Nand_1(A,B,Q);
Tester Tester_1(A,B);

initial
  begin
  $dumpfile("Nand.vcd");
  $dumpvars;
  //Se imprimen los datos de cada entrada/salida
    $display (" A  B  Q");
    $monitor (" %b  %b  %b",
   A, B, Q);

  end


endmodule
