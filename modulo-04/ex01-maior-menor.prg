Function Main()
    Local nValorUm   := 0
    Local nValorDois := 0
    Local cValorUm 
    Local cValorDois

    ACCEPT "Digite o primeiro valor: " TO cValorUm
    ACCEPT "Digite o segundo  valor: " TO cValorDois

    nValorUm   := Val(cValorUm)
    nValorDois := Val(cValorDois)

    If nValorUm == nValorDois 
        QOut("Os dois valores são iguais!")
    ElseIf nValorUm > nValorDois
        QOut("Maior numero: " + Alltrim(str(nValorUm)))
        QOut("Menor numero: " + Alltrim(str(nValorDois)))
    Else
        QOut("Maior numero: " + Alltrim(str(nValorDois)))
        QOut("Menor numero:"  + Alltrim(str(nValorUm)))
    Endif
    Inkey(0)
Return Nil