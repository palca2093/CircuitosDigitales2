`include "sintetizado.v"
`include "Conductual.v"
module VerificadorQ(QC,QE,QR);

//Salidas del conductual y estructural
input wire [3:0] QC;
input wire [3:0] QE;



output reg  QR;

always@(*)
    begin
      if(QC == QE)
            begin
              QR = 1;
            end
      else
            begin
              QR = 0;
            end
	end
endmodule

module VerificadorS(SC,SE,SR);


//Señales conductual y estructural
input wire  SC;
input wire  SE;
output reg  SR;
always@(*)
    begin
      if(SC == SE)
            begin
              SR = 1;
            end
      else
            begin
              SR = 0;
            end
	end
endmodule
