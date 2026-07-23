Function Main()
    Local aValores := {}
    Local i, cInput, nNum
    Local nSoma := 0
    Local nMedia := 0

    Cls
    QOut("--- Leitura de 10 Numeros ---")
    
    For i := 1 To 10
        Accept "Digite o " + AllTrim(Str(i)) + "o numero: " To cInput
        nNum := Val(cInput)
        AAdd(aValores, nNum)
        nSoma += nNum
    Next

    ASort(aValores)
    nMedia := nSoma / Len(aValores)

    Cls
    QOut("==========================================")
    QOut("              ESTATISTICAS                ")
    QOut("==========================================")
    QOut("Numeros ordenados: ")
    For i := 1 To Len(aValores)
        QQOut(AllTrim(Str(aValores[i])) + " ")
    Next
    QOut("")
    QOut("Soma total : " + AllTrim(Str(nSoma)))
    QOut("Media      : " + AllTrim(Str(nMedia, 10, 2)))
    QOut("Menor valor: " + AllTrim(Str(aValores[1])))
    QOut("Maior valor: " + AllTrim(Str(aValores[Len(aValores)])))
    QOut("==========================================")

    Inkey(0)
Return Nil