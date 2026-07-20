//Exercício 5 — Loop de programa

FUNCTION Main()

    LOCAL cNome   := ""
    LOCAL cDisc   := ""
    LOCAL cValor  := ""
    LOCAL cResp   := ""
    LOCAL nNota1  := 0
    LOCAL nNota2  := 0
    LOCAL nMedia  := 0

    WHILE .T.

        // ---------- Validação do NOME ----------
        WHILE .T.

            ACCEPT "Digite o nome do aluno: " TO cNome

            IF Len(Trim(cNome)) > 0
                EXIT
            ENDIF

            QOut("Nome invalido! Nao pode ser vazio.")

        ENDDO

        // ---------- Validação da DISCIPLINA ----------
        WHILE .T.

            ACCEPT "Digite a disciplina (3 letras maiusculas, ex: MAT): " TO cDisc

            IF Len(cDisc) == 3 .AND. cDisc == Upper(cDisc)
                EXIT
            ENDIF

            QOut("Disciplina invalida! Deve ter exatamente 3 letras maiusculas.")

        ENDDO

        // ---------- Validação da NOTA 1 ----------
        WHILE .T.

            ACCEPT "Digite a nota 1 (0 a 10): " TO cValor
            nNota1 := Val(cValor)

            IF nNota1 >= 0 .AND. nNota1 <= 10
                EXIT
            ENDIF

            QOut("Nota invalida! Deve estar entre 0 e 10.")

        ENDDO

        // ---------- Validação da NOTA 2 ----------
        WHILE .T.

            ACCEPT "Digite a nota 2 (0 a 10): " TO cValor
            nNota2 := Val(cValor)

            IF nNota2 >= 0 .AND. nNota2 <= 10
                EXIT
            ENDIF

            QOut("Nota invalida! Deve estar entre 0 e 10.")

        ENDDO

        // ---------- Cálculo e exibição ----------
        nMedia := (nNota1 + nNota2) / 2

        QOut("")
        QOut("===== Dados do Aluno =====")
        QOut("Nome: " + cNome)
        QOut("Disciplina: " + cDisc)
        QOut("Nota 1: " + Str(nNota1, 10, 2))
        QOut("Nota 2: " + Str(nNota2, 10, 2))
        QOut("Media: " + Str(nMedia, 10, 2))
        QOut("")

        // ---------- Pergunta se deseja continuar ----------
        ACCEPT "Deseja calcular outro? (S/N): " TO cResp

        IF Upper(cResp) != "S"
            EXIT
        ENDIF

    ENDDO

    QOut("")
    QOut("Programa encerrado.")

RETURN NIL