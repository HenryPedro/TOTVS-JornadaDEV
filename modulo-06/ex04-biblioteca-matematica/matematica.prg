Function FatorialN(nN)
    Local nFat := 1
    Local i

     If nFat < 0
      Return 0
    EndIf

    For i := 1 TO nN
      nFat := nFat * i
    Next
Return nFat

Function EhPrimo(nN)
    Local i

     If nN < 2 
       Return .F.
    EndIf

    For i := 2 To Sqrt(nN)
        IF (nN % i) == 0
        Return .F. // Achou um divisor, não é primo
    EndIf
Next
Return .T.

Function MMC(nA, nB)
    Local nTemp

    DO While nB != 0
        nTemp := nB
        nB    := nA % nB  // Resto da divisão
        nA    := nTemp
    EndDo
Return nA 

Function MDC (nA, nB)

If nA == 0 .OR. nB == 0
Return 0
EndIf
Return Abs(nA * nB) / MDC(nA, nB)