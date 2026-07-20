//Exercício 3 — Máquina de soma

FUNCTION Main()

    LOCAL cValor := ""
    LOCAL nValor := 0
    LOCAL nTotal := 0    // acumulador
    LOCAL nQtd   := 0    // contador

    WHILE .T.

        ACCEPT "Digite um valor (0 para sair): " TO cValor
        nValor := Val(cValor)

        IF nValor == 0
            EXIT
        ENDIF

        nTotal += nValor
        nQtd++

    ENDDO

    QOut("")
    QOut("Soma total: " + Str(nTotal, 10, 0))
    QOut("Quantidade de valores somados: " + Str(nQtd, 10, 0))

RETURN NIL