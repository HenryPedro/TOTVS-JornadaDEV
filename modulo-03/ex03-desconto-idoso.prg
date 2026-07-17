FUNCTION Main()

    LOCAL cNome     := ""
    LOCAL cData     := ""
    LOCAL cPrecoTxt := ""

    LOCAL dNasc     := CToD("  /  /  ")

    LOCAL nPreco    := 0.00
    LOCAL nIdade    := 0
    LOCAL nDesconto := 0.00
    LOCAL nTotal    := 0.00

    CLS

    ACCEPT "Digite seu nome: " TO cNome
    ACCEPT "Digite sua data de nascimento (dd/mm/aaaa): " TO cData
    ACCEPT "Digite o valor do produto (R$): " TO cPrecoTxt

    dNasc  := CToD(cData)
    nPreco := Val(cPrecoTxt)

    IF Empty(dNasc)
        QOut("")
        QOut("Data de nascimento invalida.")
        Inkey(0)
        Return NIL
    ENDIF

    IF nPreco <= 0
        QOut("")
        QOut("O valor do produto deve ser maior que zero.")
        Inkey(0)
        Return NIL
    ENDIF

   
    nIdade := Int((Date() - dNasc) / 365)

    IF nIdade >= 60
        nDesconto := nPreco * 0.125
    ELSE
        nDesconto := 0.00
        QOut("")
        QOut("Cliente nao tem direito ao desconto.")
    ENDIF
    
    nTotal := nPreco - nDesconto

    QOut("")
    QOut("==============================")
    QOut("Dados da Compra")
    QOut("==============================")
    QOut("Cliente..: " + AllTrim(cNome))
    QOut("Idade....: " + AllTrim(Str(nIdade)) + " anos")
    QOut("Valor da compra....: R$ " + AllTrim(Str(nPreco,10,2)))
    QOut("Desconto.: R$ " + AllTrim(Str(nDesconto,10,2)))
    QOut("Total....: R$ " + AllTrim(Str(nTotal,10,2)))
    QOut("==============================")

    Inkey(0)

RETURN NIL