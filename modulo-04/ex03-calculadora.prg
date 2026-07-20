Function Main()
    Local cInput1   := ""
    Local cInput2   := ""
    Local cOperacao := ""
    Local nNumero1  := 0
    Local nNumero2  := 0
    Local nResultado:= 0
    Local lErro     := .F.
    Local cMsgErro  := ""

    ACCEPT "Digite o primeiro numero: " TO cInput1
    nNumero1 := Val(cInput1)

    ACCEPT "Digite a operacao (+, -, *, /, ^, R): " TO cOperacao
    cOperacao := Upper(Alltrim(cOperacao))

    If cOperacao != "R"
        ACCEPT "Digite o segundo numero: " TO cInput2
        nNumero2 := Val(cInput2)
    EndIf

    DO CASE
        CASE cOperacao == "+"
            nResultado := nNumero1 + nNumero2
        CASE cOperacao == "-"
            nResultado := nNumero1 - nNumero2
        CASE cOperacao == "*"
            nResultado := nNumero1 * nNumero2
        CASE cOperacao == "/"
            If nNumero2 != 0
                nResultado := nNumero1 / nNumero2
            Else
                lErro := .T.
                cMsgErro := "Erro: Nao e possivel dividir por zero."
            EndIf
        CASE cOperacao == "^"
            If nNumero1 > 100 .OR. nNumero2 > 10
                lErro := .T.
                cMsgErro := "Erro: Valores excedem o limite de precisao matematica da calculadora."
            Else
                nResultado := nNumero1 ^ nNumero2
            EndIf
        CASE cOperacao == "R"
            nResultado := Sqrt(nNumero1)
        OTHERWISE
            lErro := .T.
            cMsgErro := "Operacao invalida!"
    ENDCASE

    If lErro == .T.
        QOut(cMsgErro)
    Else
        QOut("Resultado: " + Alltrim(Str(nResultado, 20, 2)))
    EndIf

    Inkey(0)
Return Nil