FUNCTION Main()
/* 
LOCAL - ideal
PRIVATE - dados ..
PUBLIC - 
STATIC - 
*/
    PUBLIC nNumero := 50
    Operacoes()
    Soma()     

RETURN NIL

FUNCTION Operacoes() 
    PRIVATE nNumero := 10

    Soma()
    Substrai()

RETURN NIL       

FUNCTION Soma()
    //LOCAL nNumero := 20
    QOut(nNumero)
    QOut("Fun├º├úo Soma")
RETURN NIL

FUNCTION Substrai()
    //LOCAL nNumero := 30
    QOut(nNumero)  
    QOut("Fun├º├úo Substrai")
RETURN NIL