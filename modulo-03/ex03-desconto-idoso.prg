//Exerc¡cio 3 ? Programa completo com desconto
/*
Escreva um programa que leia o nome, a data de nascimento e o pre‡o de um produto. Se a
pessoa tiver mais de 60 anos, aplique 12,5% de desconto. Exiba um resumo formatado
(cliente, idade, pre‡o, desconto e total).
*/

FUNCTION Desconto()
    LOCAL cNome     := ""
    LOCAL dDataNasc := CToD("")
    LOCAL nPreco    := 0
    LOCAL cEntrada  := ""
    LOCAL nDesconto := 0
    LOCAL nIdade    := 0
    LOCAL nTotal    := 0

    
    hb_cdpSelect("PT850")

    ACCEPT "Digite o seu nome: " TO cEntrada
    cNome := cEntrada

    ACCEPT "Digite sua data de nascimento (dd/mm/aaaa): " TO cEntrada
    dDataNasc := CToD(cEntrada)

    ACCEPT "Digite o pre‡o: " TO cEntrada
    nPreco := Val(cEntrada)

    nIdade := Int((Date() - dDataNasc) / 365)

    IF nIdade > 60
        nDesconto := nPreco * 0.125
    ELSE
        nDesconto := 0
    ENDIF

    nTotal := nPreco - nDesconto

    QOut("=======================")
    QOut("Nome do cliente: " + cNome)
    QOut("Idade: " + AllTrim(Str(nIdade)))
    QOut("O seu desconto: " + AllTrim(Str(nDesconto, 10, 2)))
    QOut("Total: " + AllTrim(Str(nTotal, 10, 2)))
    QOut("========================")

RETURN NIL