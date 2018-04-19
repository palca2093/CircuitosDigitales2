`timescale 1ns/1ps
module flipflop(CLK,D,Q); //Modulo de descripción de un FF tipo D
	input wire CLK;
	input wire D;
	output reg Q;

	/*Declaración de parámetros necesarios para el cálculo de la potencia y las counter.
	Valores obtenidos de la hoja del fabricante*/

	integer counter=0;
	integer Vdd=5;
	real CL=50e-12;
	real potencia;

	//Funcionamiento de una FF tipo D

	always @(posedge CLK)
	begin
		if(D==0) begin 	//Si PRE y CLR están inactivas, el FF está en modo transparente
		//	#7.3
			 Q<=D;
		end
		else
		//	#7.7
			Q<=D;
	end

 	//Tiempo de setup. De acuerdo con la hoja del fabricante el tiempo de hold del FF es 0, por lo cual no se incluye.
	always @(posedge CLK)
		begin
		#0.001
		if (D == 1) begin
		 	#3.5 if (D != 1) begin
				$monitor("Tiempo de setup irrespetado en alto %g\t",$time);
			end
		end
		if (D == 0) begin
		 	#3 if (D != 0) begin
				$monitor("Tiempo de setup irrespetado %g\t",$time);
			end
		end
	end

	// Incremento de la cuenta cada vez que hay un cambio en la salida
	always @Q begin
		counter <= counter + 1;
	end

	// Cálculo de la potencia
	always @(*) begin
		potencia=Vdd*Vdd*CL*counter;
	end
endmodule
