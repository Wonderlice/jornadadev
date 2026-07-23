// ============================================
// principal.prg
// Orquestra o menu de controle de estoque
// ============================================

SET PROCEDURE TO estoque_lib.prg

FUNCTION Main()
   LOCAL aEstoque := {}
   LOCAL cOpcao
   LOCAL cCodigoBusca := ""
   LOCAL nPos

   DO WHILE .T.

      cOpcao := MostrarMenu()

      DO CASE
      CASE cOpcao == "1"
         CadastrarProduto(aEstoque)

      CASE cOpcao == "2"
         ListarProdutos(aEstoque)

      CASE cOpcao == "3"
         EntradaEstoque(aEstoque)

      CASE cOpcao == "4"
         SaidaEstoque(aEstoque)

      CASE cOpcao == "5"
         ACCEPT "Codigo a buscar: " TO cCodigoBusca
         nPos := BuscarProduto(aEstoque, AllTrim(cCodigoBusca))
         IF nPos == 0
            QOut("Produto nao encontrado.")
         ELSE
            QOut("Encontrado na posicao " + Str(nPos, 3, 0) + ": " + aEstoque[nPos][2])
         ENDIF

      CASE cOpcao == "6"
         RelatorioEstoque(aEstoque)

      CASE cOpcao == "0"
         QOut("Saindo...")
         EXIT

      OTHERWISE
         QOut("Opcao invalida!")

      ENDCASE

   ENDDO

RETURN NIL