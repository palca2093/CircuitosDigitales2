`timescale 1ns/1ps
module Nand(
  input wire A,
  input wire B,
  output reg Q);

//Definicion de parametros de la compuerta obtenidos mediante la hoja de fabricante:

  integer Voltage = 5;
  real    Capacitance  = 50e-12;
  real    Power;
  integer Counter = 0;


//Retardo para la compuerta not encontrado en la hoja del fabricante:
  always @(*)
    begin
      if(A==1 && B==1)
        begin
          #4.4 Q=0;
        end
      else
        begin
          #5 Q=1;
        end
    end


//Calculo de la potencia para cada iteracion
	always @(Q)
		Counter <= Counter + 1;

	always @(*)
	Power = Voltage * Voltage * Capacitance * Counter;

endmodule
