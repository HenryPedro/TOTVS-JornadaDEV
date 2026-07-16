REQUEST HB_CODEPAGE_PT850

FUNCTION Main()
   LOCAL cNome
   LOCAL nIdade
   
   hb_cdpSelect("PT850")
   // ACCEPT l├¬ uma string
   ACCEPT "Digite seu nome: " TO cNome

   // INPUT l├¬ um valor (n├║mero, string, data, l├│gico)
   INPUT "Digite sua idade: " TO nIdade

   QOut("Ol├í, " + cNome + "!")
   QOut("Voc├¬ tem " + Alltrim(Str(nIdade)) + " anos.")

RETURN NIL