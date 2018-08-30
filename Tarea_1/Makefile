#MAKEFILE

all:
	iverilog -o Boton -c boton.v probador.v tb.v

run:
	vvp Boton

yosys:
	yosys -s sintesis.ys

wave:
	gtkwave Boton.vcd 
