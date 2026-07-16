# Exercício 3 — Fluxograma
Monte um fluxograma para o seguinte problema:

“Uma loja dá desconto de 10% para compras acima de R$ 100. Leia o valor da compra e
mostre o valor final a pagar.”

## Fluxograma — Desconto na loja

```mermaid
flowchart TD
    A([Início]) --> B[Leia valor]
    B --> C{Valor > 100?}
    C -- Sim --> D[Aplicar desconto de 10%<br/>final = valor * 0.9]
    C -- Não --> E[Sem desconto<br/>final = valor]
    D --> F[Escreva valor final]
    E --> F
    F --> G([Fim])
```
