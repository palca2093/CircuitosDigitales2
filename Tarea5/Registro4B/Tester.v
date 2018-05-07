`timescale 1ns / 1ps
module Tester(CLK,ENB,DIR,S_IN,MODE,D);
  output reg [1:0] MODE;
  output reg CLK;
  output reg ENB;
  output reg DIR;
  output reg S_IN;
  output reg [3:0] D;


    //Se setea el clock
    always
       begin
         #4 CLK <= ~CLK;
       end
     initial


    //Valores iniciales
    begin
      D<=1000;
      CLK=0;
      DIR<=0;
      MODE<=2'b10;
      ENB<=1;
      S_IN=0;

    // Prueba 1 izquierda
     ENB =1;
     MODE<=2'b10;
     #8

	   DIR <=0;S_IN<=1;
	   MODE<=2'b00;
     #32

	   // Prueba 2 derecha
	   ENB =1;
     MODE<=2'b10;
     #8

	   DIR <=1;S_IN<=0;
	   MODE<=2'b00;
     #32

     // Prueba 3 circular izquierda
     DIR <=0;S_IN<=1;
     MODE<=2'b01;
     #32

	   // Prueba 4 circular derecha
	   ENB =1;
     MODE<=2'b10;
     #8
	   DIR <=1;
	   MODE<=2'b01;
     #32



       $finish;
    end


endmodule
