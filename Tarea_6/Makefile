
verilog:
	iverilog -o Mux.v TB.v Tester.v 

yosys:
	yosys sintesis.ys

run:
	vvp Mux

wave:
	gtkwave Mux.vcd
