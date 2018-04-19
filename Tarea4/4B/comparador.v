`include "register4B-est.v"
`include "register4B-cond.v"
module comparador4BQ(Qconductual,Qestructural,Qreal);

input wire [3:0] Qconductual;
input wire [3:0] Qestructural;



output reg  Qreal;

always@(*)
    begin
      if(Qconductual == Qestructural)
            begin
              Qreal = 1;
            end
      else
            begin
              Qreal = 0;
            end
	end
endmodule

module comparador4BS(Sconductual,Sestructural,Sreal);



input wire  Sconductual;
input wire  Sestructural;
output reg  Sreal;
always@(*)
    begin
      if(Sconductual == Sestructural)
            begin
              Sreal = 1;
            end
      else
            begin
              Sreal = 0;
            end
	end
endmodule
