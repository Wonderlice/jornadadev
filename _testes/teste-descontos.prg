FUNCTION Main()
    LOCAL nvalor := 250
    LOCAL ndesconto := 0
    LOCAL ntotal := 0

    IF nvalor > 100
        ndesconto := nvalor * 0.10
    ENDIF   

    ntotal := nvalor - ndesconto

    QOut("O valor com desconto � de: $" + Str(ndesconto))
RETURN NIL