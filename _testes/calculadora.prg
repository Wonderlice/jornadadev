/* Calculadora Simples */

FUNCTION CalculadoraSimples()
    LOCAL nA := 0
    LOCAL nB := 0
    LOCAL cEntrada := ""

    QOut("==========================================")
    QOut("           CalculadoraSimples             ")
    QOut("==========================================")


    // Solicita ao usu†rio que digite dois n£meros
    ACCEPT "Digite o primeiro n£mero: " TO cEntrada
    nA := Val(cEntrada)

    ACCEPT "Digite o segundo n£mero: " TO cEntrada
    nB := Val(cEntrada)
    QOut("")
    // Exibe os resultados das operaá‰es matem†ticas
    QOut("Multiplicaá∆o: " + AllTrim(Str(nA * nB)))
    QOut("Soma: " + AllTrim(Str(nA + nB)))
    QOut("Subtraá∆o: " + AllTrim(Str(nA - nB)))

    // Verifica se o segundo n£mero Ç zero antes de realizar a divis∆o
    IF nB == 0
        QOut("Divis∆o: Erro: Divis∆o por zero")
    ELSE
        QOut("Divis∆o: " + AllTrim(Str(nA / nB)))
    ENDIF
    QOut("==========================================")
RETURN NIL



 
