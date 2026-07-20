Function Main()
    Local nSecreto    := HB_RandomInt(1, 100)
    Local nTentativa  := 7
    Local cPalpite    := ""
    Local nPalpite    := 0
    Local lAcertou    := .F.
    Local nI          := 0

    QOut("====================================")
    QOut("     JOGO: ADIVINHE O NUMERO        ")
    QOut("====================================")
    QOut("Tente adivinhar o numero entre 1 e 100.")
    QOut("Voce tem 7 tentativas!")
    QOut("")

    For nI := 1 To nTentativa
        QOut("Tentativa " + AllTrim(Str(nI)) + " de " + AllTrim(Str(nTentativa)))
        ACCEPT "Digite seu palpite: " TO cPalpite
        nPalpite := Val(cPalpite)

        If nPalpite == nSecreto
            lAcertou := .T.
            QOut("")
            QOut("PARABENS! Voce acertou em " + AllTrim(Str(nI)) + " tentativa(s)!")
            Exit
        ElseIf nPalpite < nSecreto
            QOut("DICA: O numero secreto é MAIOR.")
        Else
            QOut("DICA: O numero secreto é MENOR.")
        EndIf
        
        QOut("------------------------------------")
    Next

    If !lAcertou
        QOut("")
        QOut("QUE PENA! Suas tentativas acabaram.")
        QOut("O numero secreto era: " + AllTrim(Str(nSecreto)))
    EndIf

    QOut("====================================")
    QOut("Fim de Jogo!")
    
Inkey(0)
Return Nil