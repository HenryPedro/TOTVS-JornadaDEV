Function Main()
    Local cNome        := ""
    Local cDisciplina  := ""
    Local cNota1       := ""
    Local cNota2       := ""
    Local nNota1       := 0
    Local nNota2       := 0
    Local nMedia       := 0
    Local cResposta    := ""
    Local cStatus      := ""
    Local aAlunos      := {}
    Local nI           := 0

    DO WHILE .T.
        QOut("=== Cadastrar Aluno ===")
        QOut("")

        DO WHILE .T.
            ACCEPT "Digite o nome do aluno: " TO cNome
            If Len(Trim(cNome)) > 0
                Exit
            EndIf
            QOut("Erro: O nome nao pode ser vazio. Tente novamente.")
        ENDDO

        DO WHILE .T.
            ACCEPT "Digite a disciplina (ex: MAT, POR): " TO cDisciplina
            If Len(Trim(cDisciplina)) == 3 .AND. cDisciplina == Upper(cDisciplina)
                Exit
            EndIf
            QOut("Erro: A disciplina deve conter exatamente 3 letras maiusculas.")
        ENDDO

        DO WHILE .T.
            ACCEPT "Digite a Nota 1 (0 a 10): " TO cNota1
            nNota1 := Val(cNota1)
            If nNota1 >= 0 .AND. nNota1 <= 10 .AND. Len(Trim(cNota1)) > 0
                Exit
            EndIf
            QOut("Erro: A nota deve ser um numero entre 0 e 10.")
        ENDDO

        DO WHILE .T.
            ACCEPT "Digite a Nota 2 (0 a 10): " TO cNota2
            nNota2 := Val(cNota2)
            If nNota2 >= 0 .AND. nNota2 <= 10 .AND. Len(Trim(cNota2)) > 0
                Exit
            EndIf
            QOut("Erro: A nota deve ser um numero entre 0 e 10.")
        ENDDO

        nMedia := (nNota1 + nNota2) / 2
        
        If nMedia >= 7.0
            cStatus := "APROVADO"
        Else
            cStatus := "REPROVADO"
        EndIf

        // Guarda os dados do aluno na lista da turma
        AAdd(aAlunos, {cNome, cDisciplina, nMedia, cStatus})

        QOut("")
        QOut("-----------------------------------")
        QOut("=== RELATORIO INDIVIDUAL ===")
        QOut("Nome: " + cNome)
        QOut("Disciplina: " + cDisciplina)
        QOut("Media Final: " + AllTrim(Str(nMedia)))
        QOut("Situacao: " + cStatus)
        QOut("-----------------------------------")
        QOut("")

        ACCEPT "Deseja calcular outro? (S/N): " TO cResposta
        If Upper(Trim(cResposta)) != "S"
            Exit
        EndIf

        QOut("")
    ENDDO

    QOut("")
    QOut("==================================================")
    QOut("       RELATORIO CONSOLIDADO DA TURMA             ")
    QOut("==================================================")
    
    For nI := 1 To Len(aAlunos)
        QOut(AllTrim(Str(nI)) + ". " + aAlunos[nI][1] + " | " + aAlunos[nI][2] + " | Media: " + AllTrim(Str(aAlunos[nI][3])) + " | Status: " + aAlunos[nI][4])
    Next
    
    QOut("==================================================")
    QOut("Programa encerrado.")
Inkey(0)
Return Nil