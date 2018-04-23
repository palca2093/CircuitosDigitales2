module VTB();

wire [1:0] MODE;
wire [3:0] D;
output wire [3:0] QC;
output wire [3:0] QE;

output wire  SR;
output wire  QR;


Tester Tester_1(CLK,ENB,DIR,S_IN,MODE,D);

Conductual RC(QC,SO,CLK,ENB,DIR,S_IN,MODE,D);
R4B RE(.S_OUT(SOE),.CLK(CLK),.ENB(ENB),.DIR(DIR),.S_IN(S_IN),.MODE(MODE),.D(D),.Q(QE));

VerificadorS compaS(SOC,SOE,SOR);
VerificadorQ compaQ(QC,QE,QR);
initial
  begin
    $dumpfile("Verificador.vcd");
    $dumpvars;
    $display ("CLK,	 ENB, 	 DIR, 	  MODE,   D,   S_IN, QC,    QE,   SOC,   SOE,   SR,QR ");
    $monitor (" %b 	 %b 	  %b 	   %b	  %h 	 %b    %h       %h        %b 	 %b	   %b	 %b",
    CLK, ENB, DIR, MODE, D, S_IN, QC,QE, SOC, SOE, SR, QR);

  end


endmodule
