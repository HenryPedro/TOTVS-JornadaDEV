Function Main()
    Local aAlunos := {}
    Local cInput, cNome
    Local nQtdAlunos, n1, n2, n3, n4, nMedia
    Local i

    Cls
    Accept "Quantos alunos deseja cadastrar? " To cInput
    nQtdAlunos := Val(cInput)

    For i := 1 To nQtdAlunos
        Cls
        QOut("--- Cadastrando Aluno " + AllTrim(Str(i)) + " de " + AllTrim(Str(nQtdAlunos)) + " ---")
        Accept "Nome do aluno: " To cNome
        
        Accept "Nota 1: " To cInput ; n1 := Val(cInput)
        Accept "Nota 2: " To cInput ; n2 := Val(cInput)
        Accept "Nota 3: " To cInput ; n3 := Val(cInput)
        Accept "Nota 4: " To cInput ; n4 := Val(cInput)

        AAdd(aAlunos, {cNome, n1, n2, n3, n4})
    Next

    Cls
    QOut("==================================================")
    QOut("              RELATORIO DE NOTAS                  ")
    QOut("==================================================")

    For i := 1 To Len(aAlunos)
        nMedia := (aAlunos[i][2] + aAlunos[i][3] + aAlunos[i][4] + aAlunos[i][5]) / 4
        
        QOut("Aluno: " + PadR(aAlunos[i][1], 20) + ;
             " | Media: " + AllTrim(Str(nMedia, 5, 2)) + ;
             " | Status: " + If(nMedia >= 7, "APROVADO", "REPROVADO"))
    Next
    QOut("==================================================")

    Inkey(0)
Return Nil