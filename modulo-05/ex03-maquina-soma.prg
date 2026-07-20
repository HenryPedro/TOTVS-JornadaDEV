Function Main()

    Local cInput  := ""
    Local nNumero := 0
    Local nTotal  := 0
    Local nQtd    := 0

    QOut("=== Máquina de Soma ===")
    QOut("")

    DO WHILE .T.
        ACCEPT "Digite um valor (ou 0 para encerrar): " TO cInput
        nNumero := Val(cInput)

       
        IF nNumero == 0
            QOut("")
            QOut("Processamento encerrado pelo usuário.")
            EXIT
        ENDIF

        nTotal += nNumero  
        nQtd++     
       
    ENDDO

   
    QOut("-----------------------------------")
    QOut("Quantidade de números digitados: " + AllTrim(Str(nQtd)))
    QOut("Soma total dos valores: " + AllTrim(Str(nTotal)))

Return Nil