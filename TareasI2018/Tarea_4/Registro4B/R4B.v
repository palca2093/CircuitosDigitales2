`timescale 1ns / 1ps
`include "FlipFlop.v"
`include "Mux.v"
`include "Nand.v"
`include "Nor.v"
`include "Not.v"


module R4B(S_OUT,CLK,ENB,DIR,S_IN,MODE,D,Q);


//Entradas y salidas del Registro Estructural
input wire CLK;
input wire [1:0] MODE;
input wire [3:0] D;
input wire ENB;
input wire DIR;
input wire S_IN;
output wire S_OUT;
output wire [3:0] Q;

wire Q0;
wire M0;
assign M0=MODE[0];
assign Q0 =Q[0];

//CONECCION DE MULTIPLEXORES
Mux m0(MODE[0],S_IN,Q[0],S0);
Mux m1(DIR,Q[2],S0,S1);
Mux m2(MODE[1],S1,D[3],FD3);
Mux m3(DIR,Q[1],Q[3],S2);
Mux m3A(MODE[1],S2,D[2],FD2);
Mux m4(DIR,Q[0],Q[2],S3);
Mux m4A(MODE[1],S3,D[1],FD1);
Mux m5(MODE[0],S_IN,Q[3],S6);
Mux m6(DIR,S6,Q[1],S7);
Mux m7(MODE[1],S7,D[0],FD0);
Mux m8(DIR,Q[3],Q[0],S9);
Nor n1(MODE[0],MODE[1],SN);//NOR
Mux m9(SN,0,S9,FDS);
//CONECCION DE FLIPFLOPS
FlipFlop F1(CLK,FD3,Q[3]);
FlipFlop F2(CLK,FD2,Q[2]);
FlipFlop F3(CLK,FD1,Q[1]);
FlipFlop F4(CLK,FD0,Q[0]);
FlipFlop FS(CLK,FDS,S_OUT);

endmodule
