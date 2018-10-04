#MAKEFILE

all:
	iverilog -o Mux -c Mux.v Tester.v TB.v

run:
	vvp Mux

wave:
	gtkwave Mux.vcd
