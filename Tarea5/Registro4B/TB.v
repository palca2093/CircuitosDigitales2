`timescale 1ns / 1ps
module TB();

  input wire [1:0] MODE;
  wire [3:0] D;
  wire [3:0] Q;


  Tester T_1(CLK,ENB,DIR,S_IN,MODE,D);
  R4B R4B_1 (S_OUT,CLK,ENB,DIR,S_IN,MODE,D,Q);


  //Se imprimen los valores de resultados de las pruebas
  initial
    begin
      $dumpfile("Registro4B.vcd");
      $dumpvars;
      $display ("time\t CLK   ENB  DIR   MODE    D     S_IN    S_OUT    Q");
      $monitor ("%g\t    %b   %b    %b   %b      %b     %b      %b      %b",
 	  $time,             CLK, ENB, DIR, MODE,    D,    S_IN,   S_OUT  ,  Q);

    end

endmodule
