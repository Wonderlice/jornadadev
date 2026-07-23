//Exercício 5 (Desafio) — Jokenpo modular

FUNCTION Main()
   LOCAL cJogadaJogador := ""
   LOCAL cJogadaCPU
   LOCAL cVencedor
   LOCAL cContinuar := "S"

   QOut("=== JOKENPO ===")

   DO WHILE Upper(cContinuar) == "S"

      ACCEPT "Sua jogada (PEDRA, PAPEL, TESOURA): " TO cJogadaJogador
      cJogadaJogador := Upper(AllTrim(cJogadaJogador))

      IF !ValidarJogada(cJogadaJogador)
         QOut("Jogada invalida! Tente novamente.")
         LOOP
      ENDIF

      cJogadaCPU := SortearJogadaCPU()
      QOut("CPU jogou: " + cJogadaCPU)

      cVencedor := DefinirVencedor(cJogadaJogador, cJogadaCPU)

      DO CASE
      CASE cVencedor == "EMPATE"
         QOut("Empate!")
      CASE cVencedor == "JOGADOR1"
         QOut("Voce venceu!")
      OTHERWISE
         QOut("CPU venceu!")
      ENDCASE

      ACCEPT "Jogar de novo? (S/N): " TO cContinuar

   ENDDO

   QOut("Fim de jogo!")

RETURN NIL


FUNCTION SortearJogadaCPU()
     LOCAL aJogadas := {"PEDRA", "PAPEL", "TESOURA"}
     LOCAL nSorteio

     nSorteio := hb_RandomInt(1, 3)

RETURN aJogadas[nSorteio]

FUNCTION ValidarJogada(cJogada)
     LOCAL aValidas := {"PEDRA", "PAPEL", "TESOURA"}

RETURN AScan(aValidas, cJogada) > 0

FUNCTION DefinirVencedor(cJogada1, cJogada2)
    IF cJogada1 == cJogada2
      RETURN "EMPATE"
   ENDIF

   DO CASE
   CASE cJogada1 == "PEDRA"    .AND. cJogada2 == "TESOURA"
      RETURN "JOGADOR1"

   CASE cJogada1 == "TESOURA"  .AND. cJogada2 == "PAPEL"
      RETURN "JOGADOR1"

   CASE cJogada1 == "PAPEL"    .AND. cJogada2 == "PEDRA"
      RETURN "JOGADOR1"

   OTHERWISE
      RETURN "JOGADOR2"

   ENDCASE

RETURN NIL

