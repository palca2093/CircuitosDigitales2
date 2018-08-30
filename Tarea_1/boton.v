module boton(
  output reg sluz,
  input wire clk,
  input reset,
  input toggle);

  always @(posedge clk)
  begin
        if(reset==0)
          if(toggle==1)
           if(sluz==0)
            sluz<=1;
              else
            sluz<=0;
            else
          sluz<=sluz;
          else
        sluz<=0;
  end
endmodule
