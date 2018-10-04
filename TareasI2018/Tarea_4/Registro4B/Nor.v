`timescale 1ns/1ps
module Nor(
  input wire A,
  input wire B,
  output reg Q);

//Definicion de parametros de la compuerta obtenidos mediante la hoja de fabricante:

  integer Voltage = 10;
  real    Capacitance  = 50e-12;
  real    Power;
  integer Counter = 0;


//Retardo para la compuerta not encontrado en la hoja del fabricante:
  always @(*)
    begin
      if(A==0 && B==0)
        begin
           Q=1;
        end
      else
        begin
           Q=0;
        end
    end


//Calculo de la potencia para cada iteracion
	always @(Q)
		Counter <= Counter + 1;

	always @(*)
	Power = Voltage * Voltage * Capacitance * Counter;

endmodule
