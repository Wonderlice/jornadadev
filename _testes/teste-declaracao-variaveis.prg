//Declaração de Variáveis (escopos)
//Em Harbour/ADVPL existem 4 formas de declarar variáveis, com escopos (vsibilidade) diferentes: LOCAL, STATIC, PRIVATE e PUBLIC.

//Local
// Visível apenas dentro da função onde foi declarada. A mais usada e recomendada.

FUNCTION MinhaFuncao ()
    LOCAL cNome := "Alice"
    LOCAL nIdade
    nIdade := 25
   //cNome e nIdade só podem ser acessadas dentro desta função
RETURN NIL


//Private
//Visível apenas dentro da função onde foi declarada. A mais usada e recomendada.

FUNCTION Principal()
    PRIVATE cFilial := "01"
    OutraFuncao()           //cFiLal é visível aqui dentro tambem
RETURN NIL

FUNCTION OutraFuncao()
    QOut(cFilial)           //funciona! vê a variável PRIVATE da chamadora
RETURN NIL

//Public
//Vísivel em todo o programa (variável global). Deve ser evitada.

PUBLIC gNomeEmpresa := "ACME Corp"
// Visível em qualquer função do programa

//Static
// Visível apenas na função , mas matém o valor entre chamadas da função. Útil para contadores ou caches.     

FUNCTION Contador()
STATIC nVezes := 0
nVezes++
QOut("Chamei " + Str(nVezes) + " vez(es)")
RETURN NIL
// Chamadas:
// Contador() → "Chamei 1 vez(es)"
// Contador() → "Chamei 2 vez(es)"
// Contador() → "Chamei 3 vez(es)"