REQUEST HB_CODEPAGE_PT850

FUNCTION Main()

    Local cNome   := "Pedro Almeida"
    Local cCidade := "S´┐¢o Paulo"
    Local cCurso  := "Harbour/ADvPL"
 
    hb_cdpSelect("PT850")
    QOut("=========================")
    QOut(" FICHA DE APRESENTA´┐¢´┐¢O")
    QOut("=========================")
    QOut("Nome     : " + cNome)
    QOut("Cidade   : " + cCidade)
    QOut("Curso    : " + cCurso)
    QOut("=========================")
    inkey(0)

RETURN NIL
