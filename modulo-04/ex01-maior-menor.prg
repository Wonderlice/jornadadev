//Exerc¡cio 1 ? Maior, menor ou iguais
/*Leia dois valores num‚ricos e exiba: - O maior dos dois - O menor dos dois - Uma
mensagem caso os dois sejam iguais*/ 

FUNCTION Main ()
    LOCAL nNum1     := 0
    LOCAL nNum2     := 0

    ACCEPT "Digite o primeiro n£mero: " TO nNum1
    nNum1 := Val(nNum1)

    ACCEPT "Digite o segundo n£mero: " TO nNum2
    nNum2 := Val(nNum2)


    IF nNum1 == nNum2
        QOut("Os dois n£meros sÆo iguais: " +  Str(nNum1))
    ELSE 
        IF nNum1 > nNum2
            QOut("O menor ‚: " + Str(nNum1)) 
            QOut("O menor ‚: "  + Str(nNum2))
        ELSE 
            QOut("O maior ‚: " + Str(nNum2))
            QOut("O menor ‚: " + Str(nNum1))
        ENDIF
    ENDIF

RETURN  NIL

