Function Main()
    Local cPlacaNoBanco := "ABC-1234"
    Local cPlacaBuscada := "ABC"
    
    QOut("==================================================")
    QOut(" Demonstracao dos operadores '=' e '==' ")
    QOut("==================================================")
    QOut("")
    QOut("Placa registrada no banco   : " + cPlacaNoBanco)
    QOut("Dado informado pelo usuario : " + cPlacaBuscada)
    QOut("--------------------------------------------------")
    
    QOut("[CENARIO 1] CANCELA DE PEDAGIO (Validacao)")
    QOut("Objetivo: Liberar APENAS se a placa for identica.")
    QOut(" ")
    
    IF cPlacaNoBanco = cPlacaBuscada
        QOut("Com '='  : CANCELA ABERTA! (FALHA GRAVE)")
        QOut("Motivo   : O sistema avaliou 'ABC' como igual a 'ABC-1234'.")
    ELSE
        QOut("Com '='  : BLOQUEADO.")
    ENDIF
    
    QOut(" ")
    
    IF cPlacaNoBanco == cPlacaBuscada
        QOut("Com '==' : CANCELA ABERTA!")
    ELSE
        QOut("Com '==' : BLOQUEADO! (COMPORTAMENTO CORRETO)")
        QOut("Motivo   : Exigiu a placa exata, caractere por caractere.")
    ENDIF
    
    QOut("--------------------------------------------------")
    
    QOut("[CENARIO 2] RELATORIO DE TRANSITO (Filtro)")
    QOut("Objetivo: Listar carros da frota com prefixo 'ABC'.")
    QOut(" ")
    
    IF cPlacaNoBanco = cPlacaBuscada
        QOut("Com '='  : REGISTRO INCLUIDO NO RELATORIO! (CORRETO)")
        QOut("Motivo   : O operador agiu como um filtro nativo, localizando")
        QOut("           o prefixo sem exigir funcoes extras de recorte.")
    ELSE
        QOut("Com '='  : NAO ENCONTRADO.")
    ENDIF
    
    QOut(" ")
    
    IF cPlacaNoBanco == cPlacaBuscada
        QOut("Com '==' : REGISTRO INCLUIDO NO RELATORIO!")
    ELSE
        QOut("Com '==' : IGNORADO! (FALHA GRAVE DE BUSCA)")
        QOut("Motivo   : O operador exato cegou o relatorio. O veiculo")
        QOut("           'ABC-1234' foi excluido da listagem.")
    ENDIF
    
    QOut("==================================================")
    Inkey(0)

RETURN 0