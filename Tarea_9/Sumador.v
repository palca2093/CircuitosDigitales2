module Sumador (

input            clk,
input            reset,
input      [3:0] dataA,
input      [3:0] dataB,
output reg [3:0] sum30_dd
);

reg [1:0]        sum_temp;
reg [1:0]        sum_temp_d;
reg [3:0]        dataA_d;
reg [3:0]        dataB_d;
reg              acarreo;
reg              acarreo_d;
reg [3:0]        sum30_d;

   always @ (posedge clk) begin
  if (!reset) begin
      sum30_dd <= 0;
      sum_temp <= 0;
      sum_temp_d <= 0;
      dataA_d <= 4'b0;
      dataB_d <= 4'b0;
      acarreo <= 0;
      acarreo_d <= 0;
      sum30_d <= 0;
  end
  else begin
    dataA_d <= dataA;
    dataB_d <= dataB;
    sum_temp <= dataA[1:0] + dataB[1:0];
    acarreo <= dataA[0] & dataA[1] & dataB[1] & dataB[0];
    sum_temp_d <= sum_temp;
    acarreo_d <= acarreo;
    sum30_d[3:2] <= dataA_d[3:2] + dataB_d[3:2] + acarreo_d;
    sum30_d[1:0] <= sum_temp_d;
    sum30_dd <= sum30_d;
    end
  end
endmodule
