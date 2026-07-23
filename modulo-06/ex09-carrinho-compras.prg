Function Main()
    Local aCarrinho := {}
    Local cNomeProd := ""
    Local cInput := ""
    Local cContinuar := "S"
    Local nPreco := 0
    Local nTotal := 0
    Local i

    Cls
    Do While Upper(cContinuar) == "S"
        Cls
        QOut("--- Adicionar Item ao Carrinho ---")
        Accept "Nome do produto: " To cNomeProd
        Accept "Preco unitario : " To cInput
        nPreco := Val(cInput)

        AAdd(aCarrinho, {cNomeProd, nPreco})

        Accept "Deseja adicionar outro produto? (S/N): " To cContinuar
    EndDo

    Cls
    QOut("==========================================")
    QOut("            RESUMO DA COMPRA              ")
    QOut("==========================================")

    For i := 1 To Len(aCarrinho)
        QOut(PadR(aCarrinho[i][1], 25) + " R$ " + Transform(aCarrinho[i][2], "@E 999,999.99"))
        nTotal += aCarrinho[i][2]
    Next

    QOut("------------------------------------------")
    QOut("TOTAL A PAGAR             R$ " + Transform(nTotal, "@E 999,999.99"))
    QOut("==========================================")

    Inkey(0)
Return Nil