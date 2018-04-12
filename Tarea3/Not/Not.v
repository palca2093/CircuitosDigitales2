`timescale 1ns/1ps
module Not(
  input wire A,
  output reg Q);

//Definicion de parametros de la compuerta obtenidos mediante la hoja de fabricante:

    integer Voltage = 5;
	  real    Capacitance  = 50e-12;
	  real    Power;
	  integer Counter = 0;

//Retardo para la compuerta not encontrado en la hoja del fabricante:
  always @(A)
    #5.5 Q = ~A;

	always @(Q)
		Counter <= Counter + 1;

	always @(*)
	Power = Voltage * Voltage * Capacitance * Counter;

endmodule
