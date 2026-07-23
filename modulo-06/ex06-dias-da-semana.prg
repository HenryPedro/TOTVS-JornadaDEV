Function Main()
    LOCAL aDias := {"Domingo", "Segunda-feira", "Terca-feira", "Quarta-feira", "Quinta-feira", "Sexta-feira", "Sabado"}
    LOCAL cInput := ""
    LOCAL nDia := 0

    CLS
    ACCEPT "Digite um numero de 1 a 7: " TO cInput
    nDia := Val(cInput)

    IF nDia >= 1 .AND. nDia <= 7
        QOut("O dia correspondente e: " + aDias[nDia])
    ELSE
        QOut("Erro: Numero invalido! Digite apenas valores entre 1 e 7.")
    ENDIF

    Inkey(0)
Return Nil