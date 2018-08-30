module probador(
    input wire sluz,
    output reg clk,
    output reg reset,
    output reg toggle);


    initial clk <= 0;
    always #2 clk <= ~clk;


    initial begin

        reset=1'b1;
        toggle=1'b0;
        #10
        reset=1'b0;
        toggle=1'b1;
        #10
        reset=1'b1;
        #10
        $finish;
    end

endmodule
