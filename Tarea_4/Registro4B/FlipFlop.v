`timescale 1ns/1ps
module FlipFlop(
	input wire CLK,
	input wire D,
	output reg Q);

//Definicion de parametros del FF obtenidos mediante la hoja de fabricante:

	integer Voltage = 5;
	real Capacitance = 50e-12;
	real Power;
	integer Counter = 0;


//Retardo para el flipflop encontrado en la hoja del fabricante:
	always @(posedge CLK)
	begin
		if(D==0) begin
			 Q<=D;
		end
		else
			 Q<=D;
	end

	always @(posedge CLK)
		begin
		#0.001
		if (D == 1) begin
		 	#3.5 if (D != 1) begin
				$monitor("Error SetupTime");
			end
		end
		if (D == 0) begin
		 	#3 if (D != 0) begin
				$monitor("Error SetupTime");
			end
		end
	end

//Calculo de la potencia para cada iteracion
	always @Q begin
		Counter <= Counter + 1;
	end

	always @(*) begin
		Power = Voltage * Voltage * Capacitance * Counter;
	end
endmodule
