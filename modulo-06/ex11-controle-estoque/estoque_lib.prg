Function BuscarProduto(aEstoque, cCodigo)
    Local i
    For i := 1 To Len(aEstoque)
        If Upper(AllTrim(aEstoque[i][1])) == Upper(AllTrim(cCodigo))
            Return i
        EndIf
    Next
Return 0

Function CadastrarProduto(aEstoque)
    Local cCod, cNome, cInput
    Local nQtd, nPreco

    Cls
    QOut("--- CADASTRO DE PRODUTO ---")
    Accept "Codigo: " To cCod
    cCod := Upper(AllTrim(cCod))

    If BuscarProduto(aEstoque, cCod) > 0
        QOut("Erro: Codigo ja cadastrado!")
        Inkey(2)
        Return Nil
    EndIf

    Accept "Nome do Produto: " To cNome
    Accept "Quantidade    : " To cInput ; nQtd := Val(cInput)
    Accept "Preco Unitario: " To cInput ; nPreco := Val(cInput)

    AAdd(aEstoque, {cCod, cNome, nQtd, nPreco})
    QOut("Produto cadastrado com sucesso!")
    Inkey(1)
Return Nil

Function ListarProdutos(aEstoque)
    Local i
    Cls
    QOut("===============================================================")
    QOut("COD     | NOME                 | QTD       | PRECO UN    ")
    QOut("===============================================================")
    For i := 1 To Len(aEstoque)
        QOut(PadR(aEstoque[i][1], 7) + " | " + ;
             PadR(aEstoque[i][2], 20) + " | " + ;
             PadL(AllTrim(Str(aEstoque[i][3])), 9) + " | " + ;
             Transform(aEstoque[i][4], "@E 999,999.99"))
    Next
    QOut("===============================================================")
    Inkey(0)
Return Nil

Function EntradaEstoque(aEstoque)
    Local cCod, cInput, nPos, nQtd

    Cls
    Accept "Codigo do produto para Entrada: " To cCod
    nPos := BuscarProduto(aEstoque, cCod)

    If nPos == 0
        QOut("Produto nao encontrado!")
        Inkey(2)
        Return Nil
    EndIf

    Accept "Quantidade a adicionar: " To cInput
    nQtd := Val(cInput)

    If nQtd <= 0
        QOut("Quantidade invalida!")
        Inkey(2)
        Return Nil
    EndIf

    aEstoque[nPos][3] += nQtd
    QOut("Estoque atualizado com sucesso!")
    Inkey(1)
Return Nil

Function SaidaEstoque(aEstoque)
    Local cCod, cInput, nPos, nQtd

    Cls
    Accept "Codigo do produto para Saida: " To cCod
    nPos := BuscarProduto(aEstoque, cCod)

    If nPos == 0
        QOut("Produto nao encontrado!")
        Inkey(2)
        Return Nil
    EndIf

    Accept "Quantidade a retirar: " To cInput
    nQtd := Val(cInput)

    If nQtd > aEstoque[nPos][3]
        QOut("Erro: Estoque insuficiente! Saldo atual: " + AllTrim(Str(aEstoque[nPos][3])))
        Inkey(2)
        Return Nil
    EndIf

    aEstoque[nPos][3] -= nQtd
    QOut("Saida realizada com sucesso!")
    Inkey(1)
Return Nil

Function RelatorioEstoque(aEstoque)
    Local i
    Local nSubTotal := 0
    Local nTotalGeral := 0

    Cls
    QOut("===============================================================")
    QOut("RELATORIO FINANCEIRO DE ESTOQUE")
    QOut("===============================================================")
    For i := 1 To Len(aEstoque)
        nSubTotal := aEstoque[i][3] * aEstoque[i][4]
        nTotalGeral += nSubTotal
        
        QOut(PadR(aEstoque[i][2], 20) + " | Total: R$ " + Transform(nSubTotal, "@E 999,999.99"))
    Next
    QOut("---------------------------------------------------------------")
    QOut("VALOR TOTAL EM ESTOQUE: R$ " + Transform(nTotalGeral, "@E 999,999.99"))
    QOut("===============================================================")
    Inkey(0)
Return Nil