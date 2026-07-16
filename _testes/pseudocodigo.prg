FUNCTION Soma(num1,num2)

 Local nResultado := num1 + num2
 QOut(Alltrim(str(nResultado)))

RETURN NIL

FUNCTION Main()
    Soma(10, 20)
    inkey(0)
RETURN NIL