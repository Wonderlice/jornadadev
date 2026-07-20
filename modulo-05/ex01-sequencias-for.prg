//Exercício 1 — Sequências com FOR/NEXT

FUNCTION Main ()
     LOCAL nI := 0

//a) Imprima os números de 1 a 100

    FOR nI := 1 TO 100
        QOut(Str(nI, 5))
    NEXT

//b)Imprima os números de -50 a 50
    
    FOR nI := -50 TO 50
        QOut(Str(nI, 5))
    NEXT
     
//c) Imprima os números de 80 a 5 em ordem decrescente
   
    FOR nI := 80 TO 5 STEP -1
        QOut(Str(nI, 5))
    NEXT
    
RETURN NIL