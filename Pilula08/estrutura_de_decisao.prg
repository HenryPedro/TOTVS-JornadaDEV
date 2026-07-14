PROCEDURE Main()
    LOCAL nNota := 8 
    
    IF nNota > 7
        QOut("Aprovado: MB")
    ELSEIF nNota >= 5
        QOut("Aprovado: B")
    ELSE
        QOut("Reprovado: I")
    ENDIF
    Inkey(0)
RETURN