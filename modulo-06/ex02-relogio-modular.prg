PROCEDURE Main()
    Local nInicio        := Seconds() 
    Local nDuracao       := 30
    Local cHoraBruta  
	Local cHoraFormatada

    DO WHILE (Seconds() - nInicio) < nDuracao
        
        cHoraBruta := ObterHora()
        cHoraFormatada := FormatarHora(cHoraBruta)
        ExibirHora(cHoraFormatada)
		
        Inkey(1) 
		
    ENDDO

    QOut("")
    QOut("--- Execução finalizada após 30 segundos ---")
RETURN

FUNCTION ObterHora()
RETURN Time()

FUNCTION FormatarHora(cHora)

//PadC centraliza/garante o tamanho fixo
RETURN PadC(AllTrim(cHora), 8)

PROCEDURE ExibirHora(cHora)
    ClearScreen()  // Limpa a tela a cada ciclo para o relógio não "rolar"
    QOut("===========================")
    QOut("   RELÓGIO DIGITAL HARBOUR ")
    QOut("          " + cHora        )
    QOut("===========================")
	Inkey(0)
RETURN