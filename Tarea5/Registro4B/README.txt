INSTRUCCIONES DE PRUEBAS

REGISTRO DES 4B

iverilog -o Registro4B R4B.v Tester.v TB.v

vvp Registro4B

gtkwave Registro4B.vcd 

____________________________________________________________________________________________________
Con la potencia y los retardos tuve problemas, ya que con retardos el registro no funciona :(
____________________________________________________________________________________________________

VERIFICADOR 

iverilog -o Verificador Verificador.v VTB.v Tester.v

vvp Verificador

gtkwave Verificador.vcd