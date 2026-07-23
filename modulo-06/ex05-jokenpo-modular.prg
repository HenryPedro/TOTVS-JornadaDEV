Function Main()
    LOCAL cJogadaUser, cJogadaCPU, cResultado
    LOCAL cContinuar := "S"

    CLS
    Do While Upper(cContinuar) == "S"
        CLS
        QOut("==========================================")
        QOut("            JOKENPÔ MODULAR               ")
        QOut("==========================================")
        QOut("Opções: [P]edra | P[A]pel | [T]esoura")
        
        ACCEPT "Sua jogada: " TO cJogadaUser
        cJogadaUser := Upper(AllTrim(cJogadaUser))

        If .NOT. ValidarJogada(cJogadaUser)
            QOut("Jogada inválida! Tente P, A ou T.")
            Inkey(2)
            Loop
        EndIf

        cJogadaCPU := SortearJogadaCPU()
        cResultado := DefinirVencedor(cJogadaUser, cJogadaCPU)

        QOut("")
        QOut("Você jogou : " + ExibirNomeJogada(cJogadaUser))
        QOut("CPU jogou  : " + ExibirNomeJogada(cJogadaCPU))
        QOut("Resultado  : " + cResultado)
        QOut("==========================================")
        
        ACCEPT "Deseja jogar novamente? (S/N): " TO cContinuar
    EndDo
Return Nil

Function SortearJogadaCPU()
    Local nSorteio := hb_RandomInt(1, 3)
    Local cJogada  := ""

    Do Case
        Case nSorteio == 1 ; cJogada := "P"
        Case nSorteio == 2 ; cJogada := "A"
        Case nSorteio == 3 ; cJogada := "T"
    EndCase
Return cJogada

Function ValidarJogada(cJogada)
Return (cJogada $ "P|A|T") .AND. Len(cJogada) == 1

Function DefinirVencedor(cJ1, cJ2)
    If cJ1 == cJ2
    Return "EMPATE!"
    EndIf

    If (cJ1 == "P" .AND. cJ2 == "T") .OR. ;
       (cJ1 == "A" .AND. cJ1 == "P") .OR. ;
       (cJ1 == "T" .AND. cJ2 == "A")
Return "VOCÊ VENCEU!"
EndIf
Return "CPU VENCEU!"

Function ExibirNomeJogada(cSigla)
    Do Case
        Case cSigla == "P" ; RETURN "Pedra"
        Case cSigla == "A" ; RETURN "Papel"
        Case cSigla == "T" ; RETURN "Tesoura"
    EndCase
Return ""