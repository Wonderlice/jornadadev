//Exercício 2 — Loop indefinido: o dobro

FUNCTION Main()

    LOCAL cValor := ""
    LOCAL nValor := 0

    WHILE .T.

        ACCEPT "Digite um valor (zero ou negativo para sair): " TO cValor
        nValor := Val(cValor)

        IF nValor <= 0
            EXIT
        ENDIF

        QOut("O dobro é: " + Str(nValor * 2, 10, 0))

    ENDDO

RETURN NIL