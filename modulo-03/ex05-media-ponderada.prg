Function Main()

    Local nNota1 := 0.00
    Local nNota2 := 0.00
    Local nNota3 := 0.00
    Local nNota4 := 0.00
    Local nMedia := 0.00
    Local nMediaMinima := 7
    Local nPesoTotal := 10

    CLS
    SET COLOR TO 2

    QOut("=======================================")
    QOut("      CALCULO DE MEDIA PONDERADA       ")
    QOut("=======================================")
    QOut(" ")

    nNota1 := LerNota("Digite a primeira nota (peso 1): ")
    nNota2 := LerNota("Digite a segunda nota  (peso 2): ")
    nNota3 := LerNota("Digite a terceira nota (peso 3): ")
    nNota4 := LerNota("Digite a quarta nota   (peso 4): ")

    nMedia := ( ;
        (nNota1 * 1) + ;
        (nNota2 * 2) + ;
        (nNota3 * 3) + ;
        (nNota4 * 4) ) / nPesoTotal

    QOut(" ")
    QOut("---------------------------------------")
    QOut("Notas Informadas")
    QOut("---------------------------------------")
    QOut("1ª Nota: " + Alltrim(Str(nNota1, 10, 2)))
    QOut("2ª Nota: " + Alltrim(Str(nNota2, 10, 2)))
    QOut("3ª Nota: " + Alltrim(Str(nNota3, 10, 2)))
    QOut("4ª Nota: " + Alltrim(Str(nNota4, 10, 2)))
    QOut("---------------------------------------")

    QOut("Média Final: " + Alltrim(Str(nMedia, 10, 2)))

    If nMedia >= nMediaMinima
        QOut("Situação   : APROVADO")
    Else
        QOut("Situação   : REPROVADO")
    EndIf

    QOut("=======================================")
    QOut(" ")
    QOut("Pressione qualquer tecla para sair...")

    Inkey(0)

Return 0


Static Function LerNota(cMensagem)

    Local cEntrada := ""
    Local nValor := 0.00

    While .T.

        ACCEPT cMensagem TO cEntrada

        cEntrada := AllTrim(cEntrada)
        cEntrada := StrTran(cEntrada, ",", ".")

        If Empty(cEntrada)
            QOut("A nota nao pode ficar vazia.")
            QOut(" ")
            Loop
        EndIf

        nValor := Val(cEntrada)

        If nValor < 0 .Or. nValor > 10
            QOut("Digite uma nota entre 0 e 10.")
            QOut(" ")
            Loop
        EndIf
        Exit
    EndDo
Return nValor