Function Main()
    Local cNome        := ""
    Local cDisciplina  := ""
    Local cNota1       := ""
    Local cNota2       := ""
    Local nNota1       := 0
    Local nNota2       := 0
    Local nMedia       := 0

    QOut("=== Validação de Dados do Aluno ===")
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

    QOut("")
    QOut("-----------------------------------")
    QOut("=== RELATORIO FINAL DO ALUNO ===")    
    QOut("Nome: " + cNome)
    QOut("Disciplina: " + cDisciplina)
    QOut("Nota 1: " + AllTrim(Str(nNota1)))
    QOut("Nota 2: " + AllTrim(Str(nNota2)))
    QOut("Media Final: " + AllTrim(Str(nMedia)))
    QOut("-----------------------------------")
    
Inkey(0)
Return Nil