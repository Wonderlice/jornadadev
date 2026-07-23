// ============================================
// estoque_lib.prg
// Biblioteca com as funcoes de estoque
// Cada produto e um array: {codigo, nome, quantidade, preco}
// ============================================

FUNCTION MostrarMenu()
   LOCAL cOpcao := ""

   QOut("")
   QOut("=== Controle de Estoque ===")
   QOut("1 - Cadastrar produto")
   QOut("2 - Listar produtos")
   QOut("3 - Entrada de estoque")
   QOut("4 - Saida de estoque")
   QOut("5 - Buscar produto por codigo")
   QOut("6 - Relatorio")
   QOut("0 - Sair")
   ACCEPT "Escolha uma opcao: " TO cOpcao

RETURN AllTrim(cOpcao)


// --------------------------------------------
// Cadastrar um novo produto no array
// --------------------------------------------
FUNCTION CadastrarProduto(aEstoque)
   LOCAL aProduto := {}
   LOCAL cCodigo := ""
   LOCAL cNome := ""
   LOCAL cQtd := ""
   LOCAL cPreco := ""

   ACCEPT "Codigo: " TO cCodigo

   IF BuscarProduto(aEstoque, AllTrim(cCodigo)) > 0
      QOut("Ja existe um produto com esse codigo!")
      RETURN NIL
   ENDIF

   ACCEPT "Nome: " TO cNome
   ACCEPT "Quantidade inicial: " TO cQtd
   ACCEPT "Preco unitario: " TO cPreco

   AAdd(aProduto, AllTrim(cCodigo))
   AAdd(aProduto, AllTrim(cNome))
   AAdd(aProduto, Val(cQtd))
   AAdd(aProduto, Val(cPreco))

   AAdd(aEstoque, aProduto)

   QOut("Produto cadastrado com sucesso!")

RETURN NIL


// --------------------------------------------
// Listar todos os produtos
// --------------------------------------------
FUNCTION ListarProdutos(aEstoque)
   LOCAL nI
   LOCAL aProduto

   IF Len(aEstoque) == 0
      QOut("Nenhum produto cadastrado.")
      RETURN NIL
   ENDIF

   QOut("")
   QOut("Codigo   Nome                 Qtd     Preco")
   QOut("----------------------------------------------")

   FOR nI := 1 TO Len(aEstoque)
      aProduto := aEstoque[nI]
      QOut(PadR(aProduto[1], 8) + " " + PadR(aProduto[2], 20) + " " + ;
           Str(aProduto[3], 5, 0) + "   " + Str(aProduto[4], 8, 2))
   NEXT

RETURN NIL


// --------------------------------------------
// Buscar produto por codigo
// Devolve a POSICAO no array, ou 0 se nao achar
// --------------------------------------------
FUNCTION BuscarProduto(aEstoque, cCodigo)
   LOCAL nI

   FOR nI := 1 TO Len(aEstoque)
      IF aEstoque[nI][1] == cCodigo
         RETURN nI
      ENDIF
   NEXT

RETURN 0


// --------------------------------------------
// Entrada de estoque (aumenta a quantidade)
// --------------------------------------------
FUNCTION EntradaEstoque(aEstoque)
   LOCAL cCodigo := ""
   LOCAL cQtd := ""
   LOCAL nPos

   ACCEPT "Codigo do produto: " TO cCodigo
   nPos := BuscarProduto(aEstoque, AllTrim(cCodigo))

   IF nPos == 0
      QOut("Produto nao encontrado!")
      RETURN NIL
   ENDIF

   ACCEPT "Quantidade a adicionar: " TO cQtd

   IF Val(cQtd) <= 0
      QOut("Quantidade invalida!")
      RETURN NIL
   ENDIF

   aEstoque[nPos][3] += Val(cQtd)

   QOut("Estoque atualizado. Nova quantidade: " + Str(aEstoque[nPos][3], 5, 0))

RETURN NIL


// --------------------------------------------
// Saida de estoque (diminui, validando saldo)
// --------------------------------------------
FUNCTION SaidaEstoque(aEstoque)
   LOCAL cCodigo := ""
   LOCAL cQtd := ""
   LOCAL nPos
   LOCAL nQtd

   ACCEPT "Codigo do produto: " TO cCodigo
   nPos := BuscarProduto(aEstoque, AllTrim(cCodigo))

   IF nPos == 0
      QOut("Produto nao encontrado!")
      RETURN NIL
   ENDIF

   ACCEPT "Quantidade a retirar: " TO cQtd
   nQtd := Val(cQtd)

   IF nQtd <= 0
      QOut("Quantidade invalida!")
      RETURN NIL
   ENDIF

   IF nQtd > aEstoque[nPos][3]
      QOut("Estoque insuficiente! Disponivel: " + Str(aEstoque[nPos][3], 5, 0))
      RETURN NIL
   ENDIF

   aEstoque[nPos][3] -= nQtd

   QOut("Saida registrada. Nova quantidade: " + Str(aEstoque[nPos][3], 5, 0))

RETURN NIL


// --------------------------------------------
// Relatorio: valor em estoque por produto e total geral
// --------------------------------------------
FUNCTION RelatorioEstoque(aEstoque)
   LOCAL nI
   LOCAL aProduto
   LOCAL nValorProduto
   LOCAL nTotalGeral := 0

   IF Len(aEstoque) == 0
      QOut("Nenhum produto cadastrado.")
      RETURN NIL
   ENDIF

   QOut("")
   QOut("=== Relatorio de estoque ===")
   QOut(PadR("Produto", 20) + PadR("Qtd", 8) + PadR("Preco", 12) + "Total")
   QOut(Replicate("-", 50))

   FOR nI := 1 TO Len(aEstoque)
      aProduto := aEstoque[nI]
      nValorProduto := aProduto[3] * aProduto[4]
      nTotalGeral += nValorProduto

      QOut(PadR(aProduto[2], 20) + ;
           PadR(Str(aProduto[3], 5, 0), 8) + ;
           PadR("R$ " + Str(aProduto[4], 6, 2), 12) + ;
           "R$ " + Str(nValorProduto, 8, 2))
   NEXT

   QOut(Replicate("-", 50))
   QOut(PadR("Total geral:", 40) + "R$ " + Str(nTotalGeral, 8, 2))

RETURN NIL