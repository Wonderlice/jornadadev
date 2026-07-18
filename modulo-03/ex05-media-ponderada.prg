//Exercício 5 — Desafio: média ponderada

/*Escreva um programa que leia 4 notas bimestrais de um aluno, calcule a média ponderada
(pesos: 1, 2, 3, 4) e exiba a média com 2 casas decimais.*/

FUNCTION Main ()
    LOCAL nNota1 := 0
    LOCAL nNota2 := 0
    LOCAL nNota3 := 0
    LOCAL nNota4 := 0
    LOCAL cEntrada := ""
    LOCAL nMediaP   := 0


    ACCEPT "Digite a nota 1: " TO cEntrada
    nNota1 := Val(cEntrada)

    ACCEPT "Digite a nota 2: " TO cEntrada
    nNota2 := Val(cEntrada)

    ACCEPT "Digite a nota 3: " TO cEntrada
    nNota3 := Val(cEntrada)

    ACCEPT "Digite a nota 4: " TO cEntrada
    nNota4 := Val(cEntrada)

    nMediaP := (nNota1 * 1 + nNota2 * 2 + nNota3 * 3 + nNota4 * 4) / (1 + 2 + 3 + 4)
    
    QOut("Sua nota do bimestre final é: " + ALLTrim(str(nMediaP, 10,2)) )

RETURN NIL