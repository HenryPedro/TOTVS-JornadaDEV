Function Main()
   Local nNum1 := 0
   Local nNum2 := 0
   Local cOperacao := ""
   Local uResultado := Nil

   nNum1 := LerNumero("Digite o primeiro numero: ")
   cOperacao := LerOperacao()

   If cOperacao != "R"
      nNum2 := LerNumero("Digite o segundo numero: ")
   Endif

   uResultado := Calcular(nNum1, nNum2, cOperacao)
   MostrarResultado(uResultado)

Return Nil

Function LerNumero(cMensagem)
   Local cInput := ""

   Accept cMensagem To cInput

Return Val(cInput)

Function LerOperacao()
   Local cOp := ""

   Accept "Digite a operacao (+, -, *, /, ^, R): " To cOp

Return Upper(Alltrim(cOp))

Function Calcular(n1, n2, cOp)
   Local nResultado := 0

   Do Case
   Case cOp == "+"
      nResultado := n1 + n2
   Case cOp == "-"
      nResultado := n1 - n2
   Case cOp == "*"
      nResultado := n1 * n2
   Case cOp == "/"
      If n2 == 0
         Return .f.
      Endif
      nResultado := n1 / n2
   Case cOp == "^"
      nResultado := n1 ^ n2
   Case cOp == "R"
      If n1 < 0
         Return .f.
      Endif
      nResultado := Sqrt(n1)
   Otherwise
      Return .f.
   Endcase

Return nResultado

Function MostrarResultado(uResultado)
   If Valtype(uResultado) == "L" .and. uResultado == .f.
      Qout("Erro: Operacao invalida, calculo impossivel ou divisao por zero!")
   Else
      Qout("Resultado: " + Alltrim(Str(uResultado, 20, 2)))
   Endif

   Qout("")
   Qout("Aperte qualquer tecla para fechar o console..")
   Inkey(0)

Return Nil