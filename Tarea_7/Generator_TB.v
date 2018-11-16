`include "Generator_cond.v"
`include "cmos_cells.v"
`include "Generator_est.v"

module Generator_TB();

parameter ADDR_WIDTH = 4;
parameter BUS_SIZE = 16;
parameter MEM_LENGTH = 1 << ADDR_WIDTH;
reg [BUS_SIZE-1:0] data_in;
reg [ADDR_WIDTH-1:0] address;
wire [BUS_SIZE-1:0] data_out_cond;
wire [BUS_SIZE-1:0] data_out_est;
reg clk;
reg reset;

initial #7 reset<=1;
initial clk <= 0;
always #5 clk <= ~clk;


initial begin
	$dumpfile("FSM.vcd");
	$dumpvars();

	@(posedge clk);
	data_in <= 0;
	address <= 0;
    reset <= 0;
	@(posedge clk);
	repeat (MEM_LENGTH) begin
	data_in <= $random;
	@(posedge clk);
	address <= address + 1;
	end
	address <= 0;
	@(posedge clk);@(posedge clk);
	repeat (MEM_LENGTH) begin
	@(posedge clk);
	  	address <= address + 1;
	end
	@(posedge clk);@(posedge clk);
	$finish;
end


Generator_cond FSM_cond (
        .clk		(clk),
        .reset (reset),
				.data_in	(data_in),
				.data_out	(data_out_cond)
);

Generator_est FSM_est (
        .clk		(clk),
        .reset (reset),
				.data_in	(data_in),
				.data_out	(data_out_est)
);

endmodule
