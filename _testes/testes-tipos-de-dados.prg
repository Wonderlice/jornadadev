// Tipos de Dados em Harbour/ADVPL

//Caractere(string) 
FUNCTION Main ()
LOCAL cNome := "Alice Gomes"
LOCAL cCidade := "São Paulo"
LOCAL cCodigo := "001"          //"001" é texto, não número!!

RETURN Nil

//Funções úteis para manipulação de strings
FUNCTION string ()
QOut(Len("Harbour")) //Retorna o tamanho da string, no caso 7   
QOut(Upper("hello")) //Retorna a string em maiúsculo, no caso "HELLO"
QOut(Lower("HELLO")) //Retorna a string em minúsculo, no caso "hello"
QOut(Left("Harbour", 3)) //Retorna os 3 primeiros caracteres da string, no caso "Har"
QOut(Right("Harbour", 4)) //Retorna os 4 últimos caracteres da string, no caso "bour"
QOut(SubStr("Harbour", 2, 3)) //Retorna 3 caracteres da string a partir da posição 2, no caso "arb"
QOut(Trim("   texto   ")) //Remove os espaços à direita "  texto" 
QOut(AllTrim("   texto   ")) //Remove os espaços em branco do início, do fim e do meio da string, no caso "texto"
RETURN Nil

//Numérico
//Representa números inteiros e decimais. Não usa aspas, caso contrário será considerado string.

FUNCTION numeros ()
LOCAL nIdade := 25
LOCAL nSalario := 3500.50
LOCAL nPi := 3.14159
LOCAL nNegativo := -100
RETURN Nil

//Funções úteis para manipulação de números
FUNCTION numerosUsar () 
QOut(Abs(-15)) //Retorna o valor absoluto, no caso 15                                   
QOut(Int(3.9)) //Retorna a parte inteira do número, (truncando), no caso 3
QOut(Round(3.456, 2))  //Retorna o número arredondado para 2 casas decimais, no caso 3.46
QOut(Sqrt(16)) //Retorna a raiz quadrada do número, no caso 4
QOut(Mod(10, 3)) //Retorna o resto da divisão, no caso 1
QOut(Max(5, 10)) //Retorna o maior valor entre os dois, no caso 10
QOut(Min(5, 10)) //Retorna o menor valor entre os dois, no caso 5
RETURN Nil

//Lógico (booleano)
//Representa valores verdadeiro ou falso. Em Harbour/ADVPL, os valores lógicos são representados por .T. (verdadeiro) e .F. (falso). 
//Obrigatorio usar os pontos antes e depois das letras T e F.   

FUNCTION logico ()
LOCAL lAtivo := .T. //Verdadeiro
LOCAL lBloqueio := .F. //Falso
LOCAL lMaior := (18 > 10) //Retorna .T. (verdadeiro) porque 18 é maior que 10
RETURN Nil

//Data
//Representa uma data. Criada com a função Date() ou com a função DtoC() para converter uma string em data.
//Repare: dHoje + 30 soma 30 dias à data. Datas em Harbour entendem aritmética de datas, então você pode somar ou subtrair dias diretamente.
FUNCTION data ()
LOCAL dHoje := Date() // data de hoje
LOCAL dNasc := CtoD("15/03/1990") // string para data
LOCAL dVencto := dHoje + 30 // daqui a 30 dias
QOut(DToC(dHoje)) // converte data para string (exibição)
QOut(Year(dHoje)) // ano
QOut(Month(dHoje)) // mês
QOut(Day(dHoje)) // dia
RETURN Nil

// NIL 
// Representa ausência de valor ou referência nula. Uma variável declaranda sem valor atribuído é considerada NIL.
/*
FUNCTION Nil ()
LOCAL xVar := Nil // variável sem valor atribuído
QOut(xVar == Nil) // Retorna .T. (verdadeiro) porque xVar não tem valor atribuído
RETURN Nil
*/