`timescale 1ns / 1ps
`include "flipflop.v"
`include "mux.v"
`include "nand.v"
`include "nor.v"
`include "not.v"


module register(S_OUT,CLK,ENB,DIR,S_IN,MODE,D,Q);

input wire CLK;
input wire [1:0] MODE;
input wire [3:0] D;
input wire ENB;
input wire DIR;
input wire S_IN;
output wire   S_OUT;
//salida completa
output wire [3:0] Q;

wire Q0;
wire M0;
assign M0=MODE[0];
assign Q0 =Q[0];

mux m0(MODE[0],S_IN,Q[0],S0);
mux m1(DIR,Q[2],S0,S1);
mux m2(MODE[1],S1,D[3],FD3);

mux m3(DIR,Q[1],Q[3],S2);
mux m3A(MODE[1],S2,D[2],FD2);

mux m4(DIR,Q[0],Q[2],S3);
mux m4A(MODE[1],S3,D[1],FD1);

mux m5(MODE[0],S_IN,Q[3],S6);
mux m6(DIR,S6,Q[1],S7);
mux m7(MODE[1],S7,D[0],FD0);

mux m8(DIR,Q[3],Q[0],S9);
Noor n1(MODE[0],MODE[1],SN);
mux m9(SN,0,S9,FDS);

flipflop F1(CLK,FD3,Q[3]);
flipflop F2(CLK,FD2,Q[2]);
flipflop F3(CLK,FD1,Q[1]);
flipflop F4(CLK,FD0,Q[0]);
flipflop FS(CLK,FDS,S_OUT);

wire[7:0] contadorM = m0.counter + m1.counter + m2.counter + m3.counter + m3A.counter +m4.counter + m4A.counter + m5.counter + m6.counter + m7.counter + m8.counter + m9.counter;
wire[7:0] contadorN = n1.counter;
wire[7:0] contadorFF = F1.counter + F2.counter + F3.counter + F4.counter + FS.counter;

endmodule
