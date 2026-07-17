FUNCTION Main()
    LOCAL nValor := 10 
    LOCAL nTotal := 0
	LOCAL nDesconto := 0
    if nValor > 100
        nDesconto := nValor * 0.10
    ENDIF
    nTotal := nValor - nDesconto
    QOut("Valor final: " + str(nTotal))
RETURN NIL