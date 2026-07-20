Function Main()
    Local cInput := ""
    Local nMes   := 0
    Local aMeses := {"Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"}
    
    ACCEPT "Digite um mês válido de 1 a 12: " TO cInput
    nMes := Val(cInput)

/*Obs: Utilizei IF/ELSE ao invés do DO CASE por ser uma 
estrutura ideal para regras de negocio assimetricas, e nao para mapeamento estatico*/
    If nMes >= 1 .AND. nMes <= 12
        QOut( aMeses[nMes] )
    Else
        QOut("Mes invalido")
    EndIf

    Inkey(0)
Return Nil  