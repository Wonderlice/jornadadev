SET PROCEDURE TO matematica.prg

FUNCTION Main()
   QOut("Fatorial de 5: " + Str(FatorialN(5), 5, 0))
   
   QOut("7 é primo? " + IIf(EhPrimo(7), "Sim", "Nao"))
   QOut("10 é primo? " + IIf(EhPrimo(10), "Sim", "Nao"))
   
   QOut("MDC de 48 e 18: " + Str(MDC(48, 18), 5, 0))

   QOut("MMC de 48 e 18: " + Str(MMC(48, 18), 5, 0))
RETURN NIL