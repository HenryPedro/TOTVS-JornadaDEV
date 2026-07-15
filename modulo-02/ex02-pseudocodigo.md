## A. Calcular a área de um retângulo (base × altura) 

```
Início
    Leia Base
    Leia Altura
    Area <- Base * Altura
    Escreva "A área do retângulo é: ", Area
Fim
```

---

## B. Verificar se um número é par ou ímpar

```
Início
    Leia Numero
    Resto <- Numero % 2
    SE Resto = 0 ENTAO
        Escreva "O numero:" + Numero + "é par"
    SENAO
        Escreva "O numero:" + Numero + "é ímpar"
Fim 
```
---

## C. Encontrar o maior entre três números

```
Início
    Leia Numero1
    Leia Numero2
    Leia Numero3

    Se (Numero1 >= Numero2) e (Numero1 >= Numero3) ENTAO
        Escreva "O maior número é: " + Numero1
    SenãoSe (Numero2 >= Numero1) e (Numero2 >= Numero3) ENTAO
        Escreva "O maior número é: " + Numero2
    Senão
        Escreva "O maior número é: " + Numero3
Fim
```