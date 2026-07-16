FUNCTION Main ()
    LOCAL nA
    LOCAL nB

    ACCEPT "Digite o primeiro valor: " To nA
    ACCEPT "Digite o segundo valor: " To nB

    nA := Valor(nA)
    nB := Valor(nB)

    Qout("================================")
    Qout("Resultado da calculadora")
    Qout("================================")
     
    Qout("Soma: " + str(nA + nB, 10, 2))
    Qout("Subtração: " + str(nA - nB, 10, 2))
    





RETURN NIL