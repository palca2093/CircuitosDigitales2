module contador_gray_cond (clk, reset_L, enable, salida_gray);

  input clk, reset_L, enable;
  output [ 4:0] salida_gray;
  wire [4:0] salida_gray;
  reg [4:0] contador;


  always @ (posedge clk)
  if (!reset_L)
    contador <= 0;
  else if (enable)
    contador <= contador + 1;

  assign salida_gray = { contador[4], (contador[4] ^ contador[3]),(contador[3] ^ contador[2]), (contador[2] ^
               contador[1]),(contador[1] ^ contador[0]) };

endmodule
