Function Main()
    Local cInput1  := ""
    Local cInput2  := ""
    Local nNumero1 := 0
    Local nNumero2 := 0

    // ACCEPT vai receber sempre como texto
    ACCEPT "Digite o primeiro n├║mero: " TO cInput1
    ACCEPT "Digite o segundo n├║mero: " TO cInput2

    nNumero1 := Val(cInput1)
    nNumero2 := Val(cInput2)

    QOut("A soma ├®: " + Alltrim(Str(nNumero1 + nNumero2), 10, 2))
    QOut("A subtracao ├®: " + Alltrim(Str(nNumero1 - nNumero2), 10, 2))
    QOut("A multiplicacao ├®: " + Alltrim(Str(nNumero1 * nNumero2), 10, 2))

    If nNumero2 <> 0
        QOut("A divisao ├®: " + Alltrim(Str(nNumero1 / nNumero2), 10, 2))
    Else
        QOut("N├úo ├® poss├¡vel dividir por zero.")
    EndIf

    inkey(0)
Return Nil