Function Main()
    Local aEstoque := {}
    Local cOpcao   := ""

    Set Procedure To estoque_lib.prg

    Do While cOpcao != "0"
        Cls
        QOut("==========================================")
        QOut("        CONTROLE DE ESTOQUE 1.0           ")
        QOut("==========================================")
        QOut("1 — Cadastrar Produto")
        QOut("2 — Listar Produtos")
        QOut("3 — Entrada de Estoque")
        QOut("4 — Saida de Estoque")
        QOut("5 — Buscar Produto")
        QOut("6 — Relatorio Financeiro")
        QOut("0 — Sair")
        QOut("==========================================")
        
        Accept "Escolha uma opcao: " To cOpcao
        cOpcao := AllTrim(cOpcao)

        Do Case
            Case cOpcao == "1" ; CadastrarProduto(aEstoque)
            Case cOpcao == "2" ; ListarProdutos(aEstoque)
            Case cOpcao == "3" ; EntradaEstoque(aEstoque)
            Case cOpcao == "4" ; SaidaEstoque(aEstoque)
            Case cOpcao == "5" ; BuscarEExibirProduto(aEstoque)
            Case cOpcao == "6" ; RelatorioEstoque(aEstoque)
        EndCase
    EndDo
Return Nil

Function BuscarEExibirProduto(aEstoque)
    Local cCod, nPos
    Cls
    Accept "Digite o codigo para busca: " To cCod
    nPos := BuscarProduto(aEstoque, cCod)

    If nPos > 0
        QOut("------------------------------------------")
        QOut("Codigo: " + aEstoque[nPos][1])
        QOut("Nome  : " + aEstoque[nPos][2])
        QOut("Qtd   : " + AllTrim(Str(aEstoque[nPos][3])))
        QOut("Preco : R$ " + Transform(aEstoque[nPos][4], "@E 999,999.99"))
        QOut("------------------------------------------")
    Else
        QOut("Produto nao encontrado!")
    EndIf
    Inkey(0)
Return Nil