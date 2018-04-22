`timescale 1ns / 1ps
module register_tb();

  input wire [1:0] MODE;
  wire [3:0] D;
  wire [3:0] Q;


  probador p1(CLK,ENB,DIR,S_IN,MODE,D);
  register reg1 (S_OUT,CLK,ENB,DIR,S_IN,MODE,D,Q);

  initial
    begin
      $dumpfile("desplazador.vcd");
      $dumpvars;
      $display ("time\t CLK   ENB  DIR   MODE    D     S_IN    S_OUT    Q");
      $monitor ("%g\t    %b   %b    %b   %b      %b     %b      %b      %b",
 	  $time,             CLK, ENB, DIR, MODE,    D,    S_IN,   S_OUT  ,  Q);

    end

endmodule
