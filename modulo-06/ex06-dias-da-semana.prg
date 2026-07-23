Function Main()
    Local aDias := {"Domingo", "Segunda-feira", "Terca-feira", "Quarta-feira", "Quinta-feira", "Sexta-feira", "Sabado"}
    Local cInput := ""
    Local nDia := 0

    CLS
    ACCEPT "Digite um numero de 1 a 7: " TO cInput
    nDia := Val(cInput)

    If nDia >= 1 .AND. nDia <= 7
        QOut("O dia correspondente e: " + aDias[nDia])
    Else
        QOut("Erro: Numero invalido! Digite apenas valores entre 1 e 7.")
    EndIf

    Inkey(0)
Return Nil