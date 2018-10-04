module tester(
output reg sel,
output reg reset,
output reg [3:0] din_0,
output reg [3:0] din_1);


initial
  begin
    din_0 <= 4'b1010;
    din_1 <= 4'b0110;
    reset = 1;

  $display("Prueba 1, Sel = 0");
      reset = 0;
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
