FUNCTION Main()
    LOCAL n1 := 10
    LOCAL n2 := 20
    LOCAL nResultado

    nResultado := Soma(n1, n2)

    QOut("O resultado da soma ‚: " + (Str(nResultado)))

RETURN NIL

FUNCTION Soma(n1, n2)
    LOCAL nSoma := n1 + n2

RETURN nSoma


    
