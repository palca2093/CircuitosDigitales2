module testbench();

wire [1:0] MODE;
wire [3:0] D;
output wire [3:0] Qcond;
output wire [3:0] Qest;

output wire  Sreal;
output wire  Qreal;


probador tst1(CLK,ENB,DIR,S_IN,MODE,D);

reg_desp Rcond(Qcond,s_outcond,CLK,ENB,DIR,S_IN,MODE,D);
register Rest(.S_OUT(s_outest),.CLK(CLK),.ENB(ENB),.DIR(DIR),.S_IN(S_IN),.MODE(MODE),.D(D),.Q(Qest));

comparador4BS compaS(s_outcond,s_outest,Sreal);
comparador4BQ compaQ(Qcond,Qest,Qreal);
initial
  begin
    $dumpfile("comparador4B.vcd");
    $dumpvars;
    $display ("CLK,	 ENB, 	 DIR, 	  MODE,   D,   S_IN, Qcond,    Qest,   s_outC,   s_outE,   Sreal,Qreal ");
    $monitor (" %b 	 %b 	  %b 	   %b	  %h 	 %b    %h       %h        %b 	 %b	   %b	 %b",
    CLK, ENB, DIR, MODE, D, S_IN, Qcond,Qest, s_outcond, s_outest, Sreal, Qreal);

  end


endmodule
