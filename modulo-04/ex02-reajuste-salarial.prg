//Exerc¡cio 2 ? Reajuste salarial por faixas
//Um funcion rio recebe reajuste

FUNCTION  Main ()
    LOCAL cSalario := ""
    LOCAL nSalarioA := 0
    LOCAL nSalarioN := 0
    LOCAL nReajuste := 0

    ACCEPT "Digite o seu s lario: " TO cSalario
    nSalarioA := Val(cSalario)

    IF nSalarioA < 1000
        nReajuste := 0.15     // 15%
    ELSEIF nSalarioA < 2000  
        nReajuste := 0.12     // 12%
    ELSEIF nSalarioA < 4000  
        nReajuste := 0.08     // 8%
    ELSE 
        nReajuste := 0.05    // 5%
    ENDIF

    nSalarioN := nSalarioA * (1 + nReajuste)

    QOut("Sal rio atual: R$ " + Str(nSalarioA, 8, 2))
    QOut("Reajuste:   " + Str(nReajuste * 100, 5, 1) + "%")
    QOut("Novo sal ¡rio:  R$ " + Str(nSalarioN, 8, 2))
RETURN NIL

