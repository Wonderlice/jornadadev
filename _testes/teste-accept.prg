FUNCTION Main()
   LOCAL cNome
   LOCAL nIdade

   // ACCEPT lê uma string
   ACCEPT "Digite seu nome: " TO cNome

   // INPUT lê um valor (número, string, data, lógico)
   INPUT "Digite sua idade: " TO nIdade

   QOut("Olá, " + cNome + "!")
   QOut("Você tem " + Alltrim(Str(nIdade)) + " anos.")

RETURN NIL