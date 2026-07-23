//Exercício 7 — Estatísticas de 10 números

FUNCTION Main()
   LOCAL aNumeros := {}
   LOCAL nI
   LOCAL cValor := ""
   LOCAL nSoma := 0
   LOCAL nMedia

   FOR nI := 1 TO 10
      ACCEPT "Digite o numero " + Str(nI, 2) + ": " TO cValor
      AAdd(aNumeros, Val(cValor))
   NEXT
    QOut("=======================================")
    QOut("          Ordem Crescente              ")
    QOut("=======================================")

   ASORT(aNumeros)

   FOR nI := 1 TO 10
      QOut(Str(aNumeros[nI], 10, 2))
      nSoma += aNumeros[nI]
   NEXT

   QOut("=======================================")
   QOut("             RESULTADOS                ")
   QOut("=======================================")

   nMedia := nSoma / Len(aNumeros)

   QOut("Soma:  " + Str(nSoma, 10, 2))
   QOut("Media: " + Str(nMedia, 10, 2))
   QOut("Menor: " + Str(aNumeros[1], 10, 2))
   QOut("Maior: " + Str(aNumeros[Len(aNumeros)], 10, 2))

RETURN NIL