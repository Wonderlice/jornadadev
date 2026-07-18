//Meu terceiro programa em Harbour/ADVPL
 
//Declarando vari�veis locais
FUNCTION Main ()                     
    LOCAL cNome   := "Alice"                  
    LOCAL cCidade := "São Paulo"          
    LOCAL cCurso  := "Harbour/ADVPL"     

    hb_cdpSelect("PT850")                 //definindo a codifica��o de caracteres para PT850 (Portugu�s)

    //Imprimindo a ficha de apresentação
    QOut("===============================")    
    QOut("     Ficha de apresentação     ")    
    QOut("===============================")    
    QOut("Nome: " + cNome)                     
    QOut("Cidade: " + cCidade)                 
    QOut("Curso: " + cCurso)                   
    QOut("===============================") 
RETURN NIL