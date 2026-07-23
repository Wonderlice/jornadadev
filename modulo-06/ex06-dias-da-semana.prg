//Parte B — Arrays (estruturas de dados) 🥚
//Exercício 6 — Dias da semana por índice

FUNCTION Main()
   LOCAL aDias := {"Domingo", "Segunda", "Terca", "Quarta", "Quinta", "Sexta", "Sabado"}
   LOCAL cNumero := ""
   LOCAL nNumero

   ACCEPT "Digite um numero de 1 a 7: " TO cNumero
   nNumero := Val(cNumero)

   IF nNumero < 1 .OR. nNumero > 7
      QOut("Numero fora do intervalo! Digite algo entre 1 e 7.")
   ELSE
      QOut("O dia correspondente e: " + aDias[nNumero])
   ENDIF

RETURN NIL