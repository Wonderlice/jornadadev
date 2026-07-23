//Exercício 3 — Refatorando a calculadora

FUNCTION Main()
   LOCAL nNa, nNb
   LOCAL cOp
   LOCAL uResultado

   nNa := LerNumero("Valor A: ")
   nNb := LerNumero("Valor B: ")

   cOp := LerOperacao()

   uResultado := Calcular(nNa, nNb, cOp)
   MostrarResultado(uResultado)

RETURN NIL

FUNCTION LerNumero(cMensagem)
   LOCAL cValor := ""

   ACCEPT cMensagem TO cValor

RETURN Val(cValor)

FUNCTION LerOperacao()
   LOCAL cValor := ""

   ACCEPT "Operações (+, -, *, /, ^, R): " TO cValor

RETURN Upper(AllTrim(cValor))

FUNCTION Calcular(nA, nB, cOp)
   LOCAL nResultado

   DO CASE
   CASE cOp == "+"
      nResultado := nA + nB

   CASE cOp == "-"
      nResultado := nA - nB

   CASE cOp == "*"
      nResultado := nA * nB

   CASE cOp == "/"
      IF nB == 0
         nResultado := .F.
      ELSE
         nResultado := nA / nB
      ENDIF

   CASE cOp == "^"
      nResultado := nA ^ nB

   CASE cOp == "R"
      IF nA < 0
         nResultado := .F.
      ELSE
         nResultado := Sqrt(nA)
      ENDIF

   OTHERWISE
      nResultado := .F.

   ENDCASE

RETURN nResultado

FUNCTION MostrarResultado(uResultado)

   IF ValType(uResultado) == "L"
      QOut("Erro: operação inválida ou impossível de calcular!")
   ELSE
      QOut("Resultado: " + Str(uResultado, 10, 2))
   ENDIF

RETURN NIL
