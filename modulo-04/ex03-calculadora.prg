//Exerc°cio 3 ? Calculadora com DO CASE
FUNCTION Main()
   LOCAL cNa := ""
   LOCAL cNb := ""
   LOCAL nNa := 0
   LOCAL nNb := 0
   LOCAL cOp := ""

   ACCEPT "Valor A: " TO cNa
   nNa := Val(cNa)

   ACCEPT "Valor B: " TO cNb
   nNb := Val(cNb)

   ACCEPT "Operaá‰es (+, -, *, /, ^, R): " TO cOp
   cOp := Upper(AllTrim(cOp))

   DO CASE
   CASE cOp == "+"
      QOut("Resultado: " + Str(nNa + nNb, 10, 2))

   CASE cOp == "-"
      QOut("Resultado: " + Str(nNa - nNb, 10, 2))

   CASE cOp == "*"
      QOut("Resultado: " + Str(nNa * nNb, 10, 2))

   CASE cOp == "/"
      IF nNb == 0
         QOut("Erro: divis∆o por zero!")
      ELSE
         QOut("Resultado: " + Str(nNa / nNb, 10, 2))
      ENDIF

   CASE cOp == "^"
      QOut("Resultado: " + Str(nNa ^ nNb, 10, 2))

   CASE cOp == "R"
      IF nNa < 0
         QOut("Erro: n∆o existe raiz quadrada real de n£mero negativo!")
      ELSE
         QOut("Resultado: " + Str(Sqrt(nNa), 10, 2))
      ENDIF

   OTHERWISE
      QOut("Erro: operaá∆o invalida!")

   ENDCASE

RETURN NIL