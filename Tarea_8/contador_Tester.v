module contador_Tester(
   output reg 	    clk,
   output reg 	    reset_L,
	 output reg				enable,
   input [4:0] salida_gray_cond,
   input [4:0] salida_gray_est);

reg Comparador;
reg estructural;
reg conductual;

always
begin
#1 clk = ~clk;
end

initial begin
 clk = 1;
 enable = 0;
 reset_L = 0;
 estructural = 5'b0;
 conductual = 5'b0;
 #10 reset_L = 1;
 #5 enable = 1;

  end


always begin
  @ (posedge clk);
  estructural <= salida_gray_est;
  conductual <= salida_gray_cond;
  if (estructural != conductual) begin
  Comparador = 1;
  end
end




endmodule
