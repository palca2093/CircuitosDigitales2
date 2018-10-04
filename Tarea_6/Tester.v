module tester(
output reg sel,
output reg reset,
output reg [3:0] din_0,
output reg v_0,
output reg [3:0] din_1,
output reg v_1);


initial
  begin
    din_0 <= 4'b1010;
    din_1 <= 4'b0110;
    v_0 = 1;
    v_1 = 1;
    reset = 1;

  $display("Prueba 1, Sel = 0, Valid = 1");
      reset = 0;
      sel<=0;
      #40;

  $display("Prueba 2, Sel = 1, Valid = 1");
      sel<=1;
      #40;

  $display("Prueba 3, Sel = 1,  Valid = 0");
      din_1 <= 0;
      v_0 = 0;
      v_1 = 0;
      #40;

  $display("Prueba 4, Sel = 0,  Valid = 0");
      din_0 <=1;
      sel<=0;
      #40;

  end
endmodule
