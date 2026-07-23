FUNCTION Main()
   LOCAL aNumeros := {5, 2, 9, 1, 7, 3, 8, 4, 6, 0}
   LOCAL nI

   QOut("Antes: ")
   FOR nI := 1 TO Len(aNumeros)
      QOut(Str(aNumeros[nI], 5, 0))
   NEXT

   BubbleSort(aNumeros)

   QOut("")
   QOut("Depois: ")
   FOR nI := 1 TO Len(aNumeros)
      QOut(Str(aNumeros[nI], 5, 0))
   NEXT

RETURN NIL


FUNCTION BubbleSort(aVetor)
   LOCAL nI, nJ
   LOCAL nTemp
   LOCAL nTam := Len(aVetor)

   FOR nI := 1 TO nTam - 1
      FOR nJ := 1 TO nTam - nI

         IF aVetor[nJ] > aVetor[nJ + 1]
            nTemp := aVetor[nJ]
            aVetor[nJ] := aVetor[nJ + 1]
            aVetor[nJ + 1] := nTemp
         ENDIF

      NEXT
   NEXT

RETURN NIL