//Meu terceiro programa em Harbour/ADVPL
 
//Declarando vari veis locais
FUNCTION Main ()                     
    LOCAL cNome   := "Alice"                  
    LOCAL cCidade := "SÆo Paulo"          
    LOCAL cCurso  := "Harbour/ADVPL"     

    hb_cdpSelect("PT850")                 //definindo a codifica‡Æo de caracteres para PT850 (Portuguˆs)

    //Imprimindo a ficha de apresenta‡Æo
    QOut("===============================")    
    QOut("     Ficha de apresenta‡Æo     ")    
    QOut("===============================")    
    QOut("Nome: " + cNome)                     
    QOut("Cidade: " + cCidade)                 
    QOut("Curso: " + cCurso)                   
    QOut("===============================") 
RETURN NIL