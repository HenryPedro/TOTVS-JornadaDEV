Function Main()
    Local cSalario 
    Local nSalarioAtual := 0
    Local nNovoSalario := 0

    ACCEPT "Digite seu salario atual: R$ " TO cSalario
    nSalarioAtual:= Val(cSalario)

    IF nSalarioAtual < 1000
        nNovoSalario := nSalarioAtual * 1.15
    ElseIf nSalarioAtual >= 1000 .AND. nSalarioAtual <= 2000
        nNovoSalario := nSalarioAtual * 1.12
    ElseIf nSalarioAtual > 2000 .AND. nSalarioAtual <= 4000
        nNovoSalario := nSalarioAtual * 1.08
    Else
        nNovoSalario := nSalarioAtual * 1.05
    Endif

    QOut("Salario reajustado: R$" + Alltrim(Str(nNovoSalario)))
    
    Inkey(0)
Return Nil