Function Main()
    Local cNumero := ""
    Local nNumero := 0    

    DO WHILE .T. 
        ACCEPT "Digite um número (ou 0 para sair): " TO cNumero
        nNumero := Val(cNumero)

        If nNumero <= 0 
            QOut("Programa Encerrado.")
            Exit
        EndIf

        QOut("O dobro é: " + Alltrim(Str(nNumero * 2)))
        QOut("")
    EndDo

Return Nil