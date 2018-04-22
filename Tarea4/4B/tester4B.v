`timescale 1ns / 1ps
module probador(CLK,ENB,DIR,S_IN,MODE,D);
  output reg [1:0] MODE;
  output reg CLK;
  output reg ENB;
  output reg DIR;
  output reg S_IN;
  output reg [3:0] D;

 always
    begin
      #4 CLK <= ~CLK;
    end
  initial

    begin
      D<=1000;
      CLK=0;
      DIR<=0;
      MODE<=2'b10;
      ENB<=1;
      S_IN=0;

// prueba rotación izquierda
    ENB =1;
    MODE<=2'b10;
    #8

	   DIR <=0;S_IN<=1;
	   MODE<=2'b00;
     #32

	  // prueba rotación derech
	   ENB =1;
     MODE<=2'b10;
     #8

	   DIR <=1;S_IN<=0;
	   MODE<=2'b00;
    #32

	   // prueba rotación circular a la derecha

	  ENB =1;
    MODE<=2'b10;
    #8

	  DIR <=1;
	  MODE<=2'b01;
    #32

    // prueba rotacion circular izquierda
    DIR <=0;S_IN<=1;
	  MODE<=2'b01;
	  #32

       $finish;
    end


endmodule
