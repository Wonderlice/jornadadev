# 🧱 Parte A — Funções (Modularização)

> Lista de exercícios sobre funções e procedimentos em Harbour

---

## Exercício 1 — Função ou Procedimento? *(conceitual)*

### 📋 Enunciado

> Para cada item abaixo, responda se é uma **função** (retorna um valor) ou um **procedimento** (só executa uma ação) e justifique em uma frase:
>
> - `Str()` — converte número em string
> - `QOut()` — exibe texto na tela
> - `Date()` — retorna a data atual
> - `Len()` — retorna o tamanho de uma string ou array
> - `Upper()` — retorna a string em maiúsculas
> - `ClearScreen()` — limpa a tela

### ✅ Resposta

| Item | Tipo | Justificativa |
|:---|:---:|:---|
| `Str()` | 🟢 **Função** | Retorna um valor (a string convertida), que pode ser atribuído a uma variável, ex: `cTexto := Str(10)`. |
| `QOut()` | 🔵 **Procedimento** | Apenas executa uma ação (exibir texto na tela); não retorna um valor utilizável em expressões. |
| `Date()` | 🟢 **Função** | Retorna um valor do tipo Data correspondente à data atual do sistema. |
| `Len()` | 🟢 **Função** | Retorna um valor numérico representando o tamanho da string ou array. |
| `Upper()` | 🟢 **Função** | Retorna uma nova string com os caracteres convertidos em maiúsculas. |
| `ClearScreen()` | 🔵 **Procedimento** | Apenas executa uma ação (limpar a tela); não produz nenhum valor retornável. |

<details>
<summary>🧠 <b>Dica rápida para diferenciar</b></summary>
<br>

Pergunte-se: **"Faz sentido escrever `variavel := NomeDaFunção(...)`?"**

- ✅ **Sim** → é **função** (`Str`, `Date`, `Len`, `Upper`)
- ❌ **Não**, o que importa é o efeito causado → é **procedimento** (`QOut`, `ClearScreen`)

</details>

---