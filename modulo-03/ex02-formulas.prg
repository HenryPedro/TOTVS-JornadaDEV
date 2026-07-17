#define PI 3.14159

Function Main()

    Local cRaio := ""
    Local cCatetoA := ""
    Local cCatetoB := ""
    Local cPeso := ""
    Local cAltura := ""

    Local nRaio := 0.00
    Local nHipotenusa := 0.00
    Local nCatetoA := 0.00
    Local nCatetoB := 0.00
    Local nPeso := 0.00
    Local nAltura := 0.00
    Local nIMC := 0.00

    CLS
    SET COLOR TO 2

    QOut("====== Exercicio A ======")
    QOut("")
    QOut("Calculo da area do circulo")

    nRaio := LerNumeroPositivo("Informe o raio do circulo: ")

    QOut("A area do circulo e: " + ;
        AllTrim(Str(PI * (nRaio ^ 2),10,2)))

    QOut("=========================")
    QOut("")

    QOut("====== Exercicio B ======")
    QOut("")
    QOut("Calculo da hipotenusa de um triangulo retangulo")

    nCatetoA := LerNumeroPositivo("Informe o cateto A: ")
    nCatetoB := LerNumeroPositivo("Informe o cateto B: ")

    nHipotenusa := Sqrt((nCatetoA ^ 2) + (nCatetoB ^ 2))

    QOut("A hipotenusa do triangulo e: " + ;
        AllTrim(Str(nHipotenusa,10,2)))

    QOut("=========================")
    QOut("")

    QOut("====== Exercicio C ======")
    QOut("")
    QOut("Calculo do IMC")

    nPeso := LerNumeroPositivo("Informe o peso: ")
    nAltura := LerNumeroPositivo("Informe a altura: ")

    nIMC := nPeso / (nAltura ^ 2)

    QOut("O IMC e: " + ;
        AllTrim(Str(nIMC,10,2)))

    QOut("=========================")

    Inkey(0)

Return NIL


Static Function LerNumeroPositivo(cMensagem)

    Local cEntrada := ""
    Local nValor := 0.00

    Do While .T.

        ACCEPT cMensagem TO cEntrada

        cEntrada := StrTran(AllTrim(cEntrada), ",", ".")
        nValor := Val(cEntrada)

        If Empty(cEntrada)
            QOut("Digite um valor.")
            QOut("")

        ElseIf nValor <= 0
            QOut("O valor deve ser maior que zero.")
            QOut("")

        Else
            Exit
        EndIf

    EndDo

Return nValor