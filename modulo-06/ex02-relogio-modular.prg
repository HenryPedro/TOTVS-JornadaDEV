Function Main()
    Local nInicio        := Seconds() 
    Local nDuracao       := 30
    Local cHoraBruta  
	Local cHoraFormatada

    Do While (Seconds() - nInicio) < nDuracao
        
        cHoraBruta := ObterHora()
        cHoraFormatada := FormatarHora(cHoraBruta)
        ExibirHora(cHoraFormatada)
		
        Inkey(1) 
		
    EndDo

    QOut("")
    QOut("--- Execução finalizada após 30 segundos ---")
Return Nil

Function ObterHora()
Return Time()

Function FormatarHora(cHora)

//PadC centraliza/garante o tamanho fixo
Return PadC(AllTrim(cHora), 8)

Function ExibirHora(cHora)
    CLS
    QOut("===========================")
    QOut("   RELÓGIO DIGITAL HARBOUR ")
    QOut("          " + cHora        )
    QOut("===========================")
Return Nil