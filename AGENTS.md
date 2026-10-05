# AGENTS.md — Modelo LaTeX TCC IFS (Instituto Federal de Sergipe)

Este arquivo é a **fonte de verdade persistente** para a revisão de conformidade
ABNT do projeto. Ele é lido e atualizado pela skill `revisao-abnt`.

> Para reproduzir a análise, use a skill `revisao-abnt`. Ela executa a revisão
> criteriosa e atualiza este arquivo e o relatório.

---

## 1. Comandos de compilação

Requisitos (portátil — não depender de caminho fixo de máquina):
- Uma distribuição TeX com `latexmk` e `pdflatex` no `PATH`:
  - **Windows:** MiKTeX (adicionar `.../miktex/bin/x64` ao PATH) ou TeX Live.
  - **Linux/Ubuntu:** TeX Live (`sudo apt install texlive-latex-extra latexmk`).
- `pdftotext` (parte do poppler):
  - **Windows/MiKTeX:** já incluso; **Linux:** `sudo apt install poppler-utils`.
- Descobrir o executável independente de SO/usuário:
  `Get-Command latexmk, pdflatex, pdftotext` (PowerShell) ou `which latexmk pdflatex pdftotext` (Linux).

- Compilar: `latexmk -pdf -interaction=nonstopmode -halt-on-error main.tex`
- Compilar do zero: remover `main.pdf` antes.
- Extrair texto de página: `pdftotext -layout -f N -l N main.pdf saida.txt`
- Extrair texto de PDF de norma: `pdftotext -layout <norma.pdf> saida.txt`

**Este ambiente NÃO lê imagens nem PDFs diretamente.** Sempre usar `pdftotext`.

---

## 2. Normas de referência (pasta `Normas ABNT/`)

> A pasta `Normas ABNT/` está no `.gitignore` (PDFs com direitos autorais) e **não
> é versionada no repositório**. Cada colaborador deve adicioná-la localmente
> (ex.: download na instituição/GEDWEB ou fornecida pela biblioteca). A skill
> `revisao-abnt` usa os checkpoints abaixo mesmo se os PDFs não estiverem presentes,
> mas recomenda tê-los para a análise completa.

| Norma | Uso |
|-------|-----|
| `ABNT-NBR-14724-2024` | Estrutura do trabalho (§4) e regras gerais (§5) — norma central |
| `ABNT-NBR-6028-2021` | Resumo/abstract (§4.1) |
| `ABNT-NBR-6023-2025` | Referências (§6.3) |
| `Manual_ABNT_2024` | Orientação prática dos elementos |
| `material-de-apoio/Normativa Interna para TCC.pdf` | Regras institucionais IFS (Art. 18, 31, 34) |

Divergência ABNT × IFS: reportar **ambas** as posições, sem impor critério.

---

## 3. Checkpoints normativos por elemento

- **Capa** — ordem NBR §4.1.1: instituição (opcional), autor, título, subtítulo
  (precedido de ":"), volume, local, ano.
- **Folha de rosto** — ordem §4.2.1.1.1; natureza do meio→margem direita, espaço simples (§5.2).
- **Ficha catalográfica** — §4.2.1.1.2 (verso / logo após folha de rosto em eletrônico); não conta na paginação (§5.3); palavras-chave **sem numeração duplicada**.
- **Folha de aprovação** — §4.2.1.3: autor, título, subtítulo, natureza, data, banca (nome/titulação/assinatura/instituição).
- **Dedicatória** — §5.2.4: sem título, meio→margem direita, parte inferior, espaçamento 1,5.
- **Agradecimentos** — §5.2.3: título centralizado.
- **Epígrafe** — §5.2.4: sem título, meio→margem direita, parte inferior; espaçamento 1,5.
- **Resumo / Abstract** — NBR 6028 §4.1: parágrafo único, 3ª pessoa, 150–500 palavras; palavras-chave separadas por ";", minúsculas, finalizadas por ponto (§4.1.7).
- **Lista de siglas** — §4.2.1.11: ordem alfabética.
- **Lista de símbolos** — §4.2.1.12: ordem de aparição no texto.
- **Referências** — NBR 6023 §6.3 + NBR 14724 §5.2: espaço simples, alinhamento à esquerda, alfabético, separadas por linha em branco; antes de apêndices/anexos (§4.2.3).
- **Apêndices / Anexos** — §4.2.3.3 / §4.2.3.4: "APÊNDICE/ANEXO + letra" + **travessão** + título.

---

## 4. Estado de conformidade (última revisão)

Legenda: ✅ Conforme · ⚠️ Ajuste · ❌ Não conforme · ⬜ Não revisado.

> Última revisão completa: **28/09/2026** (elementos "Finalizado" do README, 16 elementos; PDF compilado do zero, 26 páginas, sem erros).

| Elemento | Arquivo | Status | Observação registrada |
|----------|---------|--------|------------------------|
| Capa | `structure.sty` (`\imprimircapa`) | ✅ Conforme | local/ano em `\large`; fonte `newtx` (clone Times) vs. Times original (IFS Art. 34) |
| Folha de Rosto | `structure.sty` (`\imprimirfolhaderosto`) | ✅ Conforme | — |
| Ficha Catalográfica | `01-pre-textuais/00-folha-catalografica.tex` | ✅ Conforme | numeração das palavras-chave corrigida (commit `07ed40e`: sequência 1–5 + descritores romanos I–V); observação anterior ("2." duplicado) desatualizada |
| Folha de Aprovação | `01-pre-textuais/01-folha-aprovacao.tex` | ⚠️ Ajuste | banca até 4 membros vs. IFS Art. 18 (3 titulares + suplente); placeholders sem titulação (§4.2.1.3) |
| Dedicatória | `01-pre-textuais/02-dedicatoria.tex` | ✅ Conforme | — |
| Agradecimentos | `01-pre-textuais/03-agradecimentos.tex` | ✅ Conforme | — |
| Epígrafe | `01-pre-textuais/04-epigrafe.tex` | ⚠️ Ajuste | espaçamento 1,0 vs. regra 1,5 (§5.2 — lista de exceções não inclui a epígrafe) |
| Resumo | `01-pre-textuais/05-resumo-pt.tex` | ⚠️ Ajuste | siglas em minúsculas nas palavras-chave ("ifs", "abnt", "tcc") — NBR 6028 §4.1.7 (exceção: substantivos próprios); texto-exemplo com 134 palavras (< 150, §4.1.8a) |
| Abstract | `01-pre-textuais/06-abstract-en.tex` | ⚠️ Ajuste | idem em inglês ("ifs", "abnt"); texto-exemplo < 150 palavras |
| Lista de Figuras | `main.tex` (`\listoffigures*`) | ✅ Conforme | entrada "Figura 1 – Título … página" com travessão ✓ |
| Lista de Algoritmos | `main.tex` (`\listofalgorithms`) | ⚠️ Ajuste | entradas sem "Algoritmo" e sem travessão (§4.2.1.9 por analogia; legenda usa "Algoritmo 1:"); pacote `algorithm2e` em `nao-altere/` |
| Lista de Siglas | `01-pre-textuais/07-lista-abreviaturas-siglas.tex` | ✅ Conforme | — |
| Lista de Símbolos | `01-pre-textuais/08-lista-simbolos.tex` | ⚠️ Ajuste | ordem por categoria vs. ordem de aparição (§4.2.1.12) |
| Referências | `referencias.bib` + `\bibliography` | ⚠️ Ajuste | título "Referências" em caixa mista; exemplos `kitchenham` quase duplicados (citações 2007a/2007b); data de acesso "01 de jan, 2026" fora do padrão |
| Apêndices | `03-pos-textuais/01-apendices.tex` | ⚠️ Ajuste | meia-risca (–) em vez de travessão (—) (§4.2.3.3); separador gerado pela classe `abntex2.cls` (`nao-altere/`) |
| Anexos | `03-pos-textuais/02-anexos.tex` | ⚠️ Ajuste | meia-risca (–) em vez de travessão (—) (§4.2.3.4) |

### Correções recomendadas (pendentes)
1. Epígrafe: avaliar espaçamento 1,0 → 1,5 (NBR 14724:2024 §5.2).
2. Resumo/Abstract: capitalizar as siglas nos exemplos de palavras-chave — "normativa do IFS; ABNT NBR 6028; formatação de TCC" (NBR 6028 §4.1.7); substituir os textos-exemplo por resumos reais (150–500 palavras, §4.1.8a).
3. Lista de Algoritmos: redefinir localmente as entradas para "Algoritmo 1 – Título … página" e a legenda com travessão (analogia §4.2.1.9/§5.8).
4. Lista de símbolos: reordenar conforme aparição no texto (§4.2.1.12).
5. Padronizar título "REFERÊNCIAS" em maiúsculas; unificar entradas kitchenham (NBR 6023 §7.7.6); meia-risca → travessão em apêndices/anexos (§4.2.3.3/4).
6. Decidir composição da banca (ABNT vs. IFS Art. 18) e fonte (Times original vs. `newtx`).
7. ~~Ficha catalográfica: corrigir numeração das palavras-chave~~ — **RESOLVIDO** (commit `07ed40e`, 13/09/2026).

---

## 5. Protocolo de atualização

Ao concluir uma revisão (via skill `revisao-abnt`):
1. Atualize a seção 4 (estado de cada elemento revisado).
2. Atualize "Correções recomendadas" conforme os novos achados.
3. Gere `relatorio-revisao-abnt.md` com status, fundamento (cláusula) e observação por elemento.
4. Se o usuário autorizar, aplique as correções e registre aqui o que foi feito.

---

## 5.1 Documentação do código LaTeX (skill `revisao-documentacao`)

A documentação instrutiva (comentários `%` e a referência de comandos) é revisada
pela skill `revisao-documentacao`, que mantém os checkpoints abaixo e gera
`relatorio-revisao-documentacao.md`.

Legenda: ✅ Instrutivo · ⚠️ Ajuste · ⬜ Não documentado.

| Arquivo | Status | Observação |
|---------|--------|------------|
| `structure.sty` (listings/código-fonte) | ✅ Instrutivo | `listings` carregado; `\lstset` monocromático, moldura `frame` desativada (vem do algorithm2e), numeração de linha `numbers=left` ativada |
| `02-textuais/04-metodologia.tex` | ✅ Instrutivo | exemplo de algoritmo Java (B&W) com `%` DICA; popula `\listofalgorithms` |
| `02-textuais/01-introducao.tex` | ⚠️ Ajuste | `\cite[text]{...}` sem DICA explicativa (citação direta vs. indireta) |
| `README.md` ("Referência rápida de comandos") | ✅ Instrutivo | tabela de comandos sincronizada; *(comum adicional)* sinalizado |

Checkpoints de documentação:
- `\cite`, `\citeonline`, `\fonte`, `\label`, `\ref` sempre documentados quando usados.
- Todo novo ambiente (tabela, equação, algoritmo, figura) deve ter DICA.
- Referência de comandos (README) deve permanecer sincronizada com o código.
- Exemplos destinados a substituição/remoção antes da entrega devem ser sinalizados nos `%`.

---

## 6. Convenções do projeto (breve)

- Arquivos de classe/estilo: `nao-altere/` (`abntex2.cls`, `.sty`, `.bst`). Não editar.
- Elementos em: `01-pre-textuais/`, `02-textuais/`, `03-pos-textuais/`.
- Estrutura e capa/folha de rosto: `structure.sty` + `main.tex`.
- Fontes: `style-font-*.sty` (Times original via LuaLaTeX; `newtx` padrão; Arial; Helvet).
- Código-fonte em preto e branco (NBR 14724 §5.1): destaque por negrito/itálico, sem cor.
- Skills do projeto: `revisao-abnt` (conformidade ABNT) e `revisao-documentacao`
  (documentação do código), em **`.agents/skills/`** (padrão aberto agentskills.io).
  - Compatibilidade: Copilot (VS Code/CLI/cloud agent) ✅ lê `.agents/skills/`;
    OpenCode V2 ✅ lê via compatibilidade; Claude Code ⚠️ não documentado para
    esse local (opcional: adicionar symlink em `.claude/skills/`).
  - IDs das skills derivam do caminho (`revisao-abnt`, `revisao-documentacao`);
    os nomes/descrições do frontmatter seguem o padrão kebab-case do Copilot.
- `README.md` lista o status TODO dos elementos ("Finalizado" etc.). Manter sincronizado.