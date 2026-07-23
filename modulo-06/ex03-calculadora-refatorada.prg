PROCEDURE Main()

    Local nNum1      := 0
    Local nNum2      := 0
    Local cOperacao  := ""
    Local uResultado := NIL

    nNum1     := LerNumero("Digite o primeiro numero: ")
    cOperacao := LerOperacao()

    IF cOperacao != "R"
        nNum2 := LerNumero("Digite o segundo numero: ")
    ENDIF

    uResultado := Calcular(nNum1, nNum2, cOperacao)

    MostrarResultado(uResultado)
RETURN

FUNCTION LerNumero(cMensagem)
    Local cInput := ""
    ACCEPT cMensagem TO cInput
RETURN Val(cInput)

FUNCTION LerOperacao()
    Local cOp := ""
    ACCEPT "Digite a operacao (+, -, *, /, ^, R): " TO cOp
RETURN Upper(AllTrim(cOp))

FUNCTION Calcular(n1, n2, cOp)
    Local nResultado := 0

    DO CASE
        CASE cOp == "+"
            nResultado := n1 + n2

        CASE cOp == "-"
            nResultado := n1 - n2

        CASE cOp == "*"
            nResultado := n1 * n2

        CASE cOp == "/"
            IF n2 == 0
                RETURN .F.
            ENDIF
            nResultado := n1 / n2

        CASE cOp == "^"
            nResultado := n1 ^ n2

        CASE cOp == "R"
            IF n1 < 0
            ENDIF
            nResultado := Sqrt(n1)

        OTHERWISE
            RETURN .F. // Operação inválida
    ENDCASE

RETURN nResultado

PROCEDURE MostrarResultado(uResultado)
    IF ValType(uResultado) == "L" .AND. uResultado == .F.
        QOut("Erro: Operacao invalida, calculo impossivel ou divisao por zero!")
    ELSE
        QOut("Resultado: " + AllTrim(Str(uResultado, 20, 2)))
    ENDIF
    QOut("")
    QOut("Aperte qualquer tecla para fechar o console..")
    Inkey(0)
RETURN