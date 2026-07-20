Function Main()
    Local nI := 0

    QOut("====================================")
    QOut("Item A: Contagem de 1 a 100")
    QOut("====================================")

    For nI := 1 TO 100
        QOut(nI)
    Next

    QOut("====================================")
    QOut("Item B: Contagem de -50 a 50")
    QOut("====================================")

    For nI := -50 TO 50
        QOut(nI)
    Next

    QOut("====================================")
    QOut("Item C: Contagem de 80 a 5")
    QOut("====================================")

    For nI := 80 TO 5 STEP -1
        QOut(nI)
    Next

    Inkey(0)
Return Nil