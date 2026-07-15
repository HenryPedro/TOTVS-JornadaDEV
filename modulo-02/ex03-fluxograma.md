flowchart TD
    A[Início] --> B[Ler o valor da compra]
    B --> C{Valor > 100?}
    C -->|Sim| D[Calcular desconto: valor * 0.9]
    C -->|Não| E[Manter o valor original]
    D --> F[Mostrar o valor final a pagar]
    E --> F
    F --> G[Fim]
