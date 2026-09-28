---
name: revisao-documentacao
description: Revisão criteriosa da documentação do código LaTeX do modelo de TCC do IFS. Use quando o usuário pedir para revisar/verificar os comentários instrutivos (% DICA/EXEMPLO) dos arquivos .tex, conferir se a documentação está alinhada e instrutiva em relação aos comandos realmente usados, ou manter a referência de comandos (guia) consistente com o código. Executa análise crítica sem alterar o conteúdo LaTeX, gerando somente relatório por padrão.
---

# Revisão de Documentação do Código LaTeX — Modelo TCC IFS

Revisa a **documentação em código** (comentários `%` e a referência de comandos
do guia) para garantir que seja instrutiva, consistente e atualizada com os
comandos realmente utilizados no modelo. Não valida conformidade ABNT (isso é
papel da skill `revisao-abnt`); foca em **usabilidade da documentação**.
Nunca altera o conteúdo LaTeX sem ordem explícita do usuário; por padrão, gera
**somente relatório**.

## Fonte de verdade (persistência)

Informações persistentes sobre a documentação — checkpoints por arquivo, estado
de cada comando documentado e histórico — ficam em **`AGENTS.md`** (seção
"Documentação e guia de comandos"). **Leia `AGENTS.md` antes de começar** e
**atualize-o ao final** de cada revisão.

## Fluxo de execução

1. **Ler o estado persistente.** Abra `AGENTS.md` e verifique os checkpoints de
   documentação e o estado registrado de cada arquivo/comando.
2. **Determinar o escopo.** Por padrão, revisar todos os arquivos `.tex` do
   projeto (fora `nao-altere/`). Se o usuário especificar um arquivo, focar nele.
3. **Extrair os comentários de documentação.** Para cada arquivo, listar as
   linhas `%` que trazem DICA, EXEMPLO, OBSERVAÇÃO ou instrução ao estudante.
4. **Extrair os comandos reais usados.** Buscar (grep/ripgrep) os comandos e
   ambientes efetivamente utilizados (ex.: `\cite`, `\citeonline`, `\fonte`,
   `\label`, `\ref`, `\begin{figure}`, `\begin{algorithm}`, `\chapter`, etc.).
5. **Cruzar documentação × código.**
   - **Comando usado sem documentação** → falha de documentação.
   - **Comentário que não corresponde ao uso real** → inconsistência.
   - **Exemplo citado no guia/README sem correspondência no código** → falha.
   - **Referência de comandos (guia) desatualizada** em relação a novos comandos
     introduzidos no modelo → falha.
6. **Compilar para validar.** Usar
   `latexmk -pdf -interaction=nonstopmode -halt-on-error main.tex`. Confirmar que
   o documento gera sem erros e que os exemplos (ex.: algoritmo) renderizam e
   entram nas listas automáticas (ex.: `\listofalgorithms`).
7. **Registrar o resultado.**
   - Atualizar `AGENTS.md` (estado de documentação de cada arquivo revisado).
   - Gerar o relatório em `relatorio-revisao-documentacao.md` (substituindo o
     anterior), com: **Status** (Instrutivo / Ajuste / Não documentado),
     **Evidência** (arquivo:linha) e **Recomendação**.

## Regras de revisão (checkpoints de documentação)

- Toda seção obrigatória deve ter instrução clara para o estudante.
- `\cite`, `\citeonline`, `\fonte`, `\label` e `\ref` devem estar documentados
  sempre que usados.
- Todo novo ambiente no código (tabela, equação, algoritmo, figura) deve ter sua
  respectiva DICA de uso.
- A referência de comandos (README/"guia") deve permanecer sincronizada com os
  comandos do código.
- Conteúdo de exemplo destinado a ser substituído/removido antes da entrega deve
  estar claramente sinalizado como tal nos comentários.
- Não alterar conteúdo LaTeX sem ordem explícita do usuário.

## Observações

- Não ler arquivos PDF/imagens diretamente; usar `pdftotext` quando necessário.
- Após salvar alterações em arquivos de config (este skill, `AGENTS.md`),
  lembrar o usuário de reiniciar a sessão do agent (OpenCode, Copilot ou
  Claude Code) para que a skill seja recarregada.
