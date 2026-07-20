Function Main()
  Local cFaixaEtaria
  Local nFaixaEtaria 
  Local cNumeroDependente := ""
  Local nNumeroDependente := 0
  Local nValPlano         := 0
  Local nValTotal         := 0
  Local nPrecoDep         := 90
  Local lCalcula          := .T.

  QOut("=== Plano de Saúde === ")
  QOut("")
  ACCEPT "Para iniciar, digite sua idade:" TO cFaixaEtaria
  nFaixaEtaria := Val(cFaixaEtaria)

  ACCEPT "Número de Dependentes (0-10):" TO cNumeroDependente
  nNumeroDependente := Val(cNumeroDependente)

  If nFaixaEtaria > 0 .AND. nFaixaEtaria <= 25
      nValPlano := 180
  ElseIf nFaixaEtaria >= 26 .AND. nFaixaEtaria <= 40
      nValPlano := 260
  ElseIf nFaixaEtaria >= 41 .AND. nFaixaEtaria <= 60
      nValPlano := 380
  ElseIf nFaixaEtaria > 60
      nValPlano := 520
  Else
      QOut("Atenção: Digite uma idade válida!")
      lCalcula := .F.
  EndIf

  If nNumeroDependente < 0 .OR. nNumeroDependente > 10 
      QOut("Digite um número de dependentes Válido (0-10)! ")
      lCalcula := .F.
  EndIf
    
  If lCalcula
      nValTotal := nValPlano + (nNumeroDependente * nPrecoDep)
      QOut("")
      QOut("Valor Plano Titular: R$ " + AllTrim(Str(nValPlano)))
      QOut("Valor Total com Dependentes: R$ " + AllTrim(Str(nValTotal)))
 EndIf

Return Nil
