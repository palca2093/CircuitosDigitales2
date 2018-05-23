`timescale 1ns/1ps
module detector_k285(
  clk, 					//clock
  rst,					//reset
  enb,					//enb
  rx_DataE,				// array de rx_DataE de datos del canal RX
  
  control_dk,				// senal 0 en datra, 1 en señal de control 
  s_control_dk,				//lo mismo que control_dk pero como salida
  k285, 				 // indica que se detecto señal k28.5
  rdState, 				// indica el estado del receptor:  modo rdState o lectura  (1) o modo idle (0)
  rx_DataS				//array de salida con la informacion, indistinto de si es data o señal de control
);

  // Valor del simbolo K.28.5
  //   dec 188
  //   hex BC
  //   HGF EDCBA 101 11100
  //   rd -1 abcdei fghj 001111 1010
  //   rd +1 abcdei fghj 110000 0101
  //
  // 
  // Version de 8 bits de la COM va aqui 
  parameter vk285 = 10'b001111_1010; //ver manera de convertir la señal a 9 bits
  
  
  // señales base
  input wire clk;
  input wire rst;
  input wire enb;
  input wire control_dk;
  input reg [7:0] rx_DataE;		 // indica si se tiene el simbolo k28.5 y es de asigancion inmediata, señal
  					 // interna

  output reg k285;// indica si se tiene el simbolo k28.5 y es de asigancion inmediata, señal
  output reg rdState;
  output reg s_control_dk;
  output reg rx_DataS      
  always @ (posedge clk) begin
    if (rst) begin
      k285 <= 0;			
      rdState <= 0;			
    end else if (~rst && enb ) begin
      rx_DataS <= rx_DataE			//Se pasa el byte de entrada a la salida.
          if (control_dk) begin			//Si lo que ingresa es señal de control 
          k285 <= (rx_DataS == k285);		//se cambia el estado rdState
          rdState <= k285 ? ~rdState : rdState;
          end
    end
  end
endmodule

