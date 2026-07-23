//Exercício 8 — Sistema de notas (array multidimensional)

FUNCTION Main()
   LOCAL aAlunos := {}
   LOCAL nQtd, nI, nJ
   LOCAL cQtd := ""
   LOCAL cNome := ""
   LOCAL cNota := ""
   LOCAL aAluno
   LOCAL nMedia
   LOCAL nSoma

   ACCEPT "Quantos alunos? " TO cQtd
   nQtd := Val(cQtd)

   FOR nI := 1 TO nQtd

      aAluno := {}

      ACCEPT "Nome do aluno " + Str(nI, 2) + ": " TO cNome
      AAdd(aAluno, AllTrim(cNome))

      FOR nJ := 1 TO 4
         ACCEPT "  Nota " + Str(nJ, 1) + ": " TO cNota
         AAdd(aAluno, Val(cNota))
      NEXT

      AAdd(aAlunos, aAluno)

   NEXT

   QOut("")
   QOut("=== Resultado ===")

   FOR nI := 1 TO Len(aAlunos)

      aAluno := aAlunos[nI]
      nSoma := aAluno[2] + aAluno[3] + aAluno[4] + aAluno[5]
      nMedia := nSoma / 4

      IF nMedia >= 7
         QOut(aAluno[1] + " - Media: " + Str(nMedia, 5, 2) + " - Aprovado")
      ELSE
         QOut(aAluno[1] + " - Media: " + Str(nMedia, 5, 2) + " - Reprovado")
      ENDIF

   NEXT

RETURN NIL