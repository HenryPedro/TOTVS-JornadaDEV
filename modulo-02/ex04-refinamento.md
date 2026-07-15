# Exercício 4 — Refinamento Sucessivo

**Problema:**  
*“Um sistema de caixa de supermercado deve registrar os itens de uma compra, calcular o subtotal, aplicar desconto se o cliente tiver cartão fidelidade (5%) e mostrar o total a pagar.”*

---

## Nível 1: Visão Geral

Este nível apresenta apenas os blocos macro de execução do sistema, dividindo o problema principal em três etapas lógicas fundamentais.

```text
Algoritmo Caixa_Supermercado_Nivel1
Inicio
    1. Registrar todos os itens da compra e calcular o subtotal.
    2. Verificar o cartão fidelidade e aplicar desconto se necessário.
    3. Exibir o valor total final e encerrar a compra.
Fim
```

---

## Nível 2: Detalhamento

```text
Algoritmo Caixa_Supermercado_Nivel2
Var
    subtotal, preco_item, total_pagar : Real
    tem_fidelidade : Caractere
    mais_itens : Caractere

Inicio
    // --- DETALHAMENTO DO PASSO 1: Registro e Subtotal ---
    subtotal <- 0
    mais_itens <- "S"
    
    Enquanto (mais_itens = "S" ou mais_itens = "s") Faça
        Escreva("Digite o preço do item: R\$ ")
        Leia(preco_item)
        subtotal <- subtotal + preco_item
        
        Escreva("Deseja registrar mais um item? (S/N): ")
        Leia(mais_itens)
    FimEnquanto
    
    Escreva("Subtotal acumulado: R\$ ", subtotal)
    
    // --- DETALHAMENTO DO PASSO 2: Validação do Desconto ---
    Escreva("O cliente possui cartão fidelidade? (S/N): ")
    Leia(tem_fidelidade)
    
    Se (tem_fidelidade = "S" ou tem_fidelidade = "s") Entao
        total_pagar <- subtotal * 0.95  // Multiplicar por 0.95 deduz 5%
    Senao
        total_pagar <- subtotal         // Mantém o valor original do subtotal
    FimSe
    
    // --- DETALHAMENTO DO PASSO 3: Exibição do Resultado ---
    Escreva("===============================")
    Escreva("TOTAL A PAGAR: R\$ ", total_pagar)
    Escreva("===============================")
Fim
```
