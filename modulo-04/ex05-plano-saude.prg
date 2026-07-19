FUNCTION Main ()

    LOCAL nIdade         := 0
    LOCAL cIdade         := ""
    LOCAL nDependentes   := 0
    LOCAL cDependentes   := ""
    LOCAL nValorBase     := 0
    LOCAL nAdicional     := 0
    LOCAL nValorTotal    := 0
    LOCAL nTotal         := 0
  
    ACCEPT "Digite sua idade: " TO cIdade
    nIdade := Val(cIdade)

     ACCEPT "Número de dependentes: " TO cDependentes  
     nDependentes := Val(cDependentes)

       DO CASE
   CASE nIdade <= 25
      nValorBase := 180

   CASE nIdade <= 40
      nValorBase := 260

   CASE nIdade <= 60
      nValorBase := 380

   OTHERWISE
      nValorBase := 520

   ENDCASE

   nAdicional := nDependentes * 90
   nTotal := nValorBase + nAdicional

   QOut("Valor base do plano: R$ " + Str(nValorBase, 10, 2))
   QOut("Adicional por dependentes: R$ " + Str(nAdicional, 10, 2))
   QOut("Valor mensal total: R$ " + Str(nTotal, 10, 2))
RETURN NIL