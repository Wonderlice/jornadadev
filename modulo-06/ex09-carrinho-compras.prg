FUNCTION Main()
   LOCAL aCarrinho := {}
   LOCAL aItem
   LOCAL cNome := ""
   LOCAL cPreco := ""
   LOCAL cContinuar := "S"
   LOCAL nTotal := 0
   LOCAL nI

   DO WHILE Upper(cContinuar) == "S"

      aItem := {}

      ACCEPT "Nome do produto: " TO cNome
      AAdd(aItem, AllTrim(cNome))

      ACCEPT "Preco: " TO cPreco
      AAdd(aItem, Val(cPreco))

      AAdd(aCarrinho, aItem)

      ACCEPT "Adicionar outro item? (S/N): " TO cContinuar

   ENDDO

   QOut("")
   QOut("=== Seu carrinho ===")

   FOR nI := 1 TO Len(aCarrinho)
      aItem := aCarrinho[nI]
      QOut(aItem[1] + " - R$ " + Str(aItem[2], 8, 2))
      nTotal += aItem[2]
   NEXT

   QOut("")
   QOut("Total: R$ " + Str(nTotal, 10, 2))

RETURN NIL