FUNCTION Main()

    LOCAL nSecreto  := HB_RandomInt(1, 100)
    LOCAL nPalpite  := 0
    LOCAL cValor    := ""
    LOCAL nI        := 0
    LOCAL lAcertou  := .F.

    QOut("===== Adivinhe o Numero =====")
    QOut("Pense em um numero entre 1 e 100. Voce tem 7 tentativas!")
    QOut("")

    FOR nI := 1 TO 7

        ACCEPT "Tentativa " + Str(nI, 2, 0) + " - Digite seu palpite: " TO cValor
        nPalpite := Val(cValor)

        IF nPalpite == nSecreto
            lAcertou := .T.
            EXIT
        ELSEIF nPalpite < nSecreto
            QOut("O numero secreto e MAIOR que " + Str(nPalpite, 10, 0))
        ELSE
            QOut("O numero secreto e MENOR que " + Str(nPalpite, 10, 0))
        ENDIF

        QOut("")

    NEXT

    QOut("")

    IF lAcertou
        QOut("Parabens! Voce acertou em " + Str(nI, 2, 0) + " tentativa(s)!")
    ELSE
        QOut("Suas tentativas acabaram!")
    ENDIF

    QOut("O numero secreto era: " + Str(nSecreto, 10, 0))

RETURN NIL