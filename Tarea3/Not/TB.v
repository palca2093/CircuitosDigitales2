module TB();

//De esta manera se conectan los modulos de pueba y el de not
Not Not_1(A,Q);
Tester Tester_1(A);

initial

  begin
  $dumpfile("Not.vcd");
  $dumpvars;
    $display ("A Q");
    $monitor (" %b %b",
   A, Q);

  end


endmodule
