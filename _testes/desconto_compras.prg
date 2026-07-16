/*M├úo na massa (no papel!)
"Uma loja d├í 10% de desconto para compras acima de R$ 100. Leia o valor e mostre o total a pagar.
"


In├¡cio
Leia Valor
Se Valor > 100
Desconto ÔåÉ Valor * 0.10
Sen├úo
Desconto ÔåÉ 0
Total ÔåÉ Valor - Desconto
Escreva Total
Fim

Testamos com R$ 80 (sem desconto) e R$ 250 (com)*/

FUNCTION Main()
    
    Local nValor := 80
    Local nDesconto := 0
    Local nTotal := 0

IF nValor > 100
    nDesconto := nValor * 0.10
ENDIF
    nTotal := nValor - nDesconto
    QOut("O valor do desconto e: R$" + Alltrim(str(nDesconto)))
    inkey(0)
RETURN NIL