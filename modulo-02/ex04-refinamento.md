# Exercício 4 — Refinamento sucessivo
**Aplique a técnica do refinamento sucessivo (visão geral → detalhamento) para o problema:**
“Um sistema de caixa de supermercado deve registrar os itens de uma compra, calcular o
subtotal, aplicar desconto se o cliente tiver cartão fidelidade (5%) e mostrar o total a
pagar.”

## Nível 1 — Visão geral 
- 1. Registrar os itens da compra
- 2. Calcular o subtotal
- 3. Verificar e aplicar desconto (se houver cartão fidelidade)
- 4. Mostrar o total a pagar

## Nível 2 — Detalhamento de cada passo
- 1. Registrar os itens da compra
   - 1.1. subtotal ← 0
   - 1.2. Repita
      - 1.2.1. Leia nome do item
      - 1.2.2. Leia preço do item
      - 1.2.3. Leia quantidade do item
      - 1.2.4. valorItem ← preço * quantidade
      - 1.2.5. subtotal ← subtotal + valorItem
      - 1.2.6. Pergunte "Deseja registrar outro item?"; leia resposta
   - Até resposta = "não"

- 2. Calcular o subtotal
    - 2.1. (subtotal já foi calculado dentro do loop do Passo 1)
    
- 3. Aplicar desconto (se o cliente tiver cartão fidelidade)
    - 3.1. Pergunte "Cliente possui cartão fidelidade?"; leia temCartao
    - 3.2. Se temCartao = "sim" então
     - desconto ← subtotal * 0.05
     - Senão
     - desconto ← 0
     - Fimse
 - 3.3. total ← subtotal - desconto

 - 4. Mostrar o total a pagar
   - 4.1. Escreva "Subtotal: ", subtotal
   - 4.2. Escreva "Desconto: ", desconto
   - 4.3. Escreva "Total a pagar: ", total











