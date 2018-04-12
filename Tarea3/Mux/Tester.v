module tester(sel,din_0,din_1);
  output sel,din_0,din_1;
  reg din_0,din_1;
  reg sel;

initial
  begin
    din_0 <= 0;
    din_1 <= 1;

  $display("Prueba 1, Sel = 0");
      sel<=0;
      #40;

  $display("Prueba 2, Sel = 1");
      sel<=1;
      #40;

  $display("Prueba 3, Sel = 1");
      din_1 <= 0;
      #40;

  $display("Prueba 4, Sel = 0");
      din_0 <=1;
      sel<=0;
      #40;

  end
endmodule
