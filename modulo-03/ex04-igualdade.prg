// Exercício 4 — = vs ==
/*
Explique e demonstre com código a diferença entre = e == em Harbour. Escreva um
exemplo em que o resultado dos dois é diferente.
*/

/*Diferença entre = e == em Harbour
O = e o == parecem a mesma coisa, mas quando a gente compara texto (string) eles se comportam diferente.

= — esse aqui é mais "relaxado". 
Se uma string for menor que a outra, ele só confere se o começo bate.
Não precisa ser igual até o fim.

== — esse é rígido.
Só considera igual se as duas strings forem idênticas, letra por letra e do mesmo tamanho.*/

FUNCTION Main()
    LOCAL cCompleta := "Harbour"
    LOCAL cParcial  := "Harb"

    IF cCompleta = cParcial
        QOut("Com =  : sao iguais")
    ELSE
        QOut("Com =  : sao diferentes")
    ENDIF

    IF cCompleta == cParcial
        QOut("Com ==: sao iguais")
    ELSE
        QOut("Com ==: sao diferentes")
    ENDIF

RETURN NIL
