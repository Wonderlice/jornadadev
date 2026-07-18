// Exercício 2 ? Calculando com fórmulas
//Escreva um programa que leia os valores do usuário e calcule e exiba:

//A área de um círculo com raio informado (π × r2)

#define PI 3.14159


FUNCTION Main ()
    LOCAL cEntrada      := ""
    LOCAL nRaio         := 0
    LOCAL nAreaCirculo  := 0

    
     hb_cdpSelect("PT850")       

ACCEPT "Digite o raio do círculo: " TO cEntrada
nRaio := Val(cEntrada)
nAreaCirculo := PI * (nRaio ^ 2)
QOut("área do círculo: " + AllTrim(Str(nAreaCirculo, 10, 2)))

Hipotenusa ()
IMC ()

RETURN NIL

//b. A hipotenusa de um triângulo retângulo (√(a2 + b2))

FUNCTION Hipotenusa ()
    LOCAL nCatetoA := 0
    LOCAL nCatetoB := 0
    LOCAL cEntrada := ""
    LOCAL nHipotenusa := 0

    ACCEPT "Digite o valor do cateto A: " TO cEntrada
    nCatetoA := Val(cEntrada)
    ACCEPT "Digite o valor do cateto B: " TO cEntrada
    nCatetoB := Val(cEntrada)

    nHipotenusa := sqrt((nCatetoA ^ 2) + (nCatetoB ^ 2))

    QOut("Resultado da Hipotenusa é: " + ALLTrim(Str(nHipotenusa)))
    
RETURN NIL

// c. O índice de massa corporal (IMC = peso / altura2)

FUNCTION IMC ()
    LOCAL nPeso    := 0
    LOCAL nAltura  := 0
    LOCAL cEntrada := ""
    LOCAL nImc     := 0

    ACCEPT "Digite o seu peso: "     TO cEntrada
    nPeso := Val(cEntrada)
    ACCEPT "Digite a sua altura: "   TO cEntrada
    nAltura := Val(cEntrada)

    nImc := (nPeso / (nAltura ^ 2))
    
    QOut("Resultado do IMC: " + AllTrim(Str(nImc, 10, 2)))

RETURN NIL
