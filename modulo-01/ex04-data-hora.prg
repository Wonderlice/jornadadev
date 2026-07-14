//Meu quarto programa em Harbour/ADVPL
 
//Declarando vari veis locais
FUNCTION Main ()                     
    LOCAL cNome   := "Alice"                  
    LOCAL cCidade := "SÆo Paulo"          
    LOCAL cCurso  := "Harbour/ADVPL" 
    LOCAL cdata   := DToC(Date())
    LOCAL cHora   := Time() 

    SET DATE FORMAT TO "dd/mm/yyyy"  //definindo o formato de data para dd/mm/yyyy
    cdata   := DToC(Date())          //obtendo a data atual e convertendo para string

     hb_cdpSelect("PT850")                 //definindo a codifica‡Æo de caracteres para PT850 (Portuguˆs)
    //Imprimindo a ficha de apresenta‡Æo
    QOut("===============================")    
    QOut("     Ficha de apresenta‡Æo     ")    
    QOut("===============================")    
    QOut("Nome: " + cNome)                     
    QOut("Cidade: " + cCidade)                 
    QOut("Curso: " + cCurso)  
    QOut("===============================")                 
    QOut("Data: " + cdata)
    QOut("Hora: " + cHora)        
    QOut("===============================") 
RETURN NIL