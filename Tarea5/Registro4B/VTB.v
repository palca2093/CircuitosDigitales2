module VTB();

wire [1:0] MODE;
wire [3:0] D;
output wire [3:0] QC;
output wire [3:0] QE;

output wire  SR;
output wire  QR;


Tester Tester_1(CLK,ENB,DIR,S_IN,MODE,D);

Conductual RC(QC,SO,CLK,ENB,DIR,S_IN,MODE,D);
sintetizado RE(.s_out(SOE),.clk(CLK),.enb(ENB),.dir(DIR),.s_in(S_IN),.mode(MODE),.d(D),.q(QE));

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
