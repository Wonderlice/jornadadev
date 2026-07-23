//Exercício 2 — Relógio digital modular


FUNCTION Main ()

    LOCAL nContador := 0

    
    DO WHILE nContador < 30

    QOut("====================================")
    QOut("         Relogio modular            ")
    QOut("====================================")
    
    ExibirHora(FormatarHora(ObterHora()))

    Inkey(1)
         nContador++

    ENDDO


RETURN NIL

FUNCTION ObterHora ()
RETURN TIME()

FUNCTION FormatarHora (cHora)
RETURN cHORA 

FUNCTION ExibirHora(cHora)
   QOut(cHora)
RETURN NIL