Function Main()
    Local aNumeros := {45, 12, 89, 3, 27, 64, 1, 90, 33, 18}

    Cls
    QOut("Vetor original:")
    ExibirVetor(aNumeros)

    BubbleSort(aNumeros)

    QOut("")
    QOut("Vetor ordenado (Bubble Sort):")
    ExibirVetor(aNumeros)

    Inkey(0)
Return Nil

Function BubbleSort(aVetor)
    Local nLen := Len(aVetor)
    Local i, j, nTemp

    For i := 1 To nLen - 1
        For j := 1 To nLen - i
            If aVetor[j] > aVetor[j + 1]
                nTemp         := aVetor[j]
                aVetor[j]     := aVetor[j + 1]
                aVetor[j + 1] := nTemp
            EndIf
        Next
    Next
Return aVetor

Function ExibirVetor(aVetor)
    Local i
    For i := 1 To Len(aVetor)
        QQOut(AllTrim(Str(aVetor[i])) + " ")
    Next
    QOut("")
Return Nil