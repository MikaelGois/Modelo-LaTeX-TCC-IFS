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
- **Separador de listas e legendas** — **travessão** (—): §4.2.1.9 (lista de ilustrações: nome + travessão + título + folha/página), §4.2.1.10 (lista de tabelas) e §5.8 (legenda: palavra designativa + número + travessão + título). *Divergência interna da norma:* o **EXEMPLO** do §5.8 grafia "Gráfico 1 – Quantidade de alunos" com **meia-risca**, contradizendo o próprio texto — prevalece o texto normativo; reportar as duas posições.
- **Títulos de seção** — indicativo separado do título por **um único espaço de caractere**, sem ponto/hífen/travessão entre eles (NBR 6024 §4.1 c)-d); NBR 14724 §5.2.2); destaque **gradativo** (NBR 14724 §5.4) — modelo: negrito até secundárias, fonte regular da terciária em diante, **idêntico no sumário**; seções primárias no topo da mancha, em folha nova (ímpar se frente-e-verso) (§5.2.2).
- **Listas de itens** — subdivisão sem título próprio → **alíneas** (a), (b)… e subalíneas (—) (NBR 6024 §4.2/4.3); bullets e listas numeradas de itens são **extra-normativos** (Manual ABNT 2024, p. 43: recomenda-se não usar bullets); espaçamento 1,5 **sem espaço extra entre itens** (§5.2). No LaTeX: ambiente `alineas`; siglas/símbolos via `siglas`/`simbolos` (coluna de texto logo após o rótulo mais largo).
- **Cabeçalho, filete e rodapé** — numeração no **canto superior direito**, a partir da parte textual (§5.3); cabeçalho corrente com título e filete no topo **não são prescritos** pela ABNT (extra-normativos — decisão do autor); palavra "Capítulo" diante da numeração é desaconselhada (Manual ABNT 2024 §2.6); notas de rodapé separadas do texto por **filete de 5 cm** (§5.2.1).
- ***et al.*** — grafado **em itálico** (NBR 10520 §6.1.2 e NBR 6023 §8.1.1.2 trazem a expressão em itálico nos próprios exemplos). *Divergência:* Manual ABNT 2024 §2.2 desaconselha itálico para expressões latinas (*apud*, *et al.*) — reportar as duas posições. Implementação **nativa** do abntex2cite: entrada `@abnt-options{opcoes-abnt}` em `referencias.bib` + `\citeoption{opcoes-abnt}` em `main.tex` (nenhum `.bst` copiado/editado; `nao-altere/` intocado).
- **Sumário** — um espaço após o número, sem sinal; títulos alinhados pela **numeração de subseção mais extensa** (Manual ABNT 2024 §3.1.14 c)-d)); sem espaço extra entre entradas (§5.2); fonte 12 uniforme. *Limitação:* NBR 6027 não está no repo.

---

## 4. Estado de conformidade (última revisão)

Legenda: ✅ Conforme · ⚠️ Ajuste · ❌ Não conforme · ⬜ Não revisado.

> Última revisão completa: **28/09/2026** (elementos "Finalizado" do README, 16 elementos; PDF compilado do zero, 26 páginas, sem erros).
> Revisão de **diagramação/tipografia: 12/10/2026** (listas, sumário, títulos, cabeçalho, notas de rodapé, "et al.", siglas/símbolos, resumo — ver bloco abaixo) e **fechamento: 12/10/2026** (epígrafe 1,5; lista de algoritmos; travessão em listas/legendas/apêndices/anexos; linha em branco entre referências; coluna de siglas/símbolos 3 em; "et al." via `\citeoption`).

| Elemento | Arquivo | Status | Observação registrada |
|----------|---------|--------|------------------------|
| Capa | `structure.sty` (`\imprimircapa`) | ✅ Conforme | local/ano em `\large`; fonte `newtx` (clone Times) vs. Times original (IFS Art. 34) |
| Folha de Rosto | `structure.sty` (`\imprimirfolhaderosto`) | ✅ Conforme | — |
| Ficha Catalográfica | `01-pre-textuais/00-folha-catalografica.tex` | ✅ Conforme | numeração das palavras-chave corrigida (commit `07ed40e`: sequência 1–5 + descritores romanos I–V); observação anterior ("2." duplicado) desatualizada |
| Folha de Aprovação | `01-pre-textuais/01-folha-aprovacao.tex` | ⚠️ Ajuste | banca até 4 membros vs. IFS Art. 18 (3 titulares + suplente); placeholders sem titulação (§4.2.1.3) |
| Dedicatória | `01-pre-textuais/02-dedicatoria.tex` | ✅ Conforme | — |
| Agradecimentos | `01-pre-textuais/03-agradecimentos.tex` | ✅ Conforme | — |
| Epígrafe | `01-pre-textuais/04-epigrafe.tex` | ✅ Conforme | espaçamento **1,5** desde 12/10/2026 (`OnehalfSpacing`; NBR 14724 §5.2 não excepciona a epígrafe); pitch medido 17,93 pt; sem título, meio→margem direita, parte inferior |
| Resumo | `01-pre-textuais/05-resumo-pt.tex` | ⚠️ Ajuste | "Palavras-chave" agora logo abaixo do resumo (espaço extra removido 12/10/2026); restam: siglas em minúsculas nas palavras-chave ("ifs", "abnt", "tcc") — NBR 6028 §4.1.7 (exceção: substantivos próprios); texto-exemplo com 134 palavras (< 150, §4.1.8a) |
| Abstract | `01-pre-textuais/06-abstract-en.tex` | ⚠️ Ajuste | idem: espaçamento corrigido 12/10/2026; restam "ifs", "abnt" em minúsculas e texto-exemplo < 150 palavras |
| Lista de Figuras | `main.tex` (`\listoffigures*`) | ✅ Conforme | entrada "Figura 1 — Título … página" com **travessão** (—) desde 12/10/2026 (§4.2.1.9; antes meia-risca, vinda do `abntex2.cls`) |
| Lista de Algoritmos | `main.tex` (`\listofalgorithms`) | ✅ Conforme | entrada "Algoritmo 1 — Título … página" à margem esquerda (`\l@algocf` redefinido) e legenda "Algoritmo 1 — …" (`\SetAlgoCaptionSeparator`) — §4.2.1.9/§5.8 por analogia (12/10/2026) |
| Lista de Siglas | `01-pre-textuais/07-lista-abreviaturas-siglas.tex` | ✅ Conforme | coluna de significados alinhada (`labelwidth=3em`, `labelsep=1.5em` + `align=left`) e sem travessão, como o exemplo da NBR 14724 §4.2.1.11 (12/10/2026) |
| Lista de Símbolos | `01-pre-textuais/08-lista-simbolos.tex` | ⚠️ Ajuste | alinhamento/separador ✅ (idem §4.2.1.12, sem travessão); resta ordem por categoria vs. ordem de aparição no texto |
| Referências | `referencias.bib` + `\bibliography` | ⚠️ Ajuste | separação por **linha em branco** corrigida em 12/10/2026 (28,90 pt = 2 × 14,45; §5.2) e "et al." em itálico ✓; restam: título "Referências" em caixa mista; exemplos `kitchenham` quase duplicados (citações 2007a/2007b); data de acesso "01 de jan, 2026" fora do padrão |
| Apêndices | `03-pos-textuais/01-apendices.tex` | ✅ Conforme | **travessão** (—) com 1 espaço de cada lado (medido 2,99 pt) na folha e no sumário — §4.2.3.3 (12/10/2026; antes meia-risca, vinda da classe) |
| Anexos | `03-pos-textuais/02-anexos.tex` | ✅ Conforme | "ANEXO A — EXEMPLO" idem (§4.2.3.4) |

### Diagramação e tipografia — revisão de 12/10/2026 (Issues #41–#43)

| Item | Status | Fundamento / observação |
|------|--------|--------------------------|
| Espaçamento indicativo↔título (seções secundárias+) | ✅ Corrigido | `\setsecnumformat` em `structure.sty` — um espaço de caractere (NBR 6024 §4.1 c); NBR 14724 §5.2.2). Antes: `\quad` (1 em) do memoir |
| Espaçamento entre itens de listas | ✅ Corrigido | `\setlist{topsep=0pt,itemsep=0pt,...}` (NBR 14724 §5.2 não excepciona listas) |
| Alinhamento lateral siglas/símbolos | ✅ Corrigido | `abntsymbols` (`enumitem`): `labelwidth=3em,align=left,labelsep=1.5em` — rótulos à esquerda e significados numa única coluna, como o exemplo da NBR 14724 §4.2.1.11/12 (sem travessão; a norma só exige travessão em ilustrações/tabelas §4.2.1.9/10). Antes: coluna fixa de 8 em do `symbols` (memoir); ajuste fino de 6 em → 3 em feito no fechamento de 12/10/2026 |
| Sumário — "vácuo" antes de seções primárias e pós-textuais | ✅ Corrigido | `\cftbeforechapterskip=0pt` (o `\phantompart` usava o mesmo comprimento) |
| Sumário — espaçamento número↔título | ✅ Corrigido (12/10/2026) | `\cftlastnumwidth` medido em `\AtBeginDocument` (`\settowidth` de "2.1.1.1" + 0,25 em, atribuições globais) e aplicado aos 7 níveis — folga medida: **2,98 pt = exatamente 1 espaço** após "2.1.1.1" (antes 26,8 pt ≈ 8 espaços). Limitação documentada: serves numeração x.x.x.x |
| Hierarquia de negrito (Issue #43) | ✅ Implementado | Negrito em primárias/secundárias; regular da terciária em diante; sumário idêntico (cft fonts com `\normalfont` — subseções+ saíam em negrito) e fonte 12 uniforme (NBR 14724 §5.4). *Divergência:* o exemplo do Manual §2.6 usa negrito+itálico na terciária e itálico na quaternária — a norma é permissiva ("destacam-se gradativamente") |
| "et al." em itálico (Issue #42) | ✅ Implementado (12/10/2026) | **Confirmado com itálico**: o texto normativo da NBR 10520 §6.1.2 grafia `<i>et al.</i>` e os exemplos de citação (10520) e de referência (NBR 6023 §8.1.1.2) trazem a expressão em itálico. Implementado com o **mecanismo nativo** do abntex2cite: `@abnt-options{opcoes-abnt}` em `referencias.bib` + `\citeoption{opcoes-abnt}` em `main.tex` (a opção é lida pelo BibTeX antes de compor a saída, então vale para todas as entradas) + `\emph{et al.}` nos exemplos manuais (`03-trabalhos-correlatos.tex`). O fork de `abntex2-alf.bst` foi **removido** (12/10/2026); `nao-altere/` intocado. *Divergência:* Manual ABNT 2024 §2.2 desaconselha itálico para expressões latinas - reportar as duas posições |
| Bullets / listas numeradas de itens (Issue #41) | ✅ Conforme (sem alteração) | NBR 6024 §4.2/4.3 normatiza alíneas/subalíneas; Manual p. 43 recomenda não usar bullets; o modelo não usa `itemize` |
| Capítulo no início da folha | ✅ Conforme | NBR 14724 §5.2.2; Manual §2.5 (folha nova; topo da mancha) |
| Título do capítulo — 1 espaço após o número | ✅ Corrigido (12/10/2026) | `\printchapternum` em `structure.sty` compõe "dígito+espaço" idêntico à medição de `\chapternamenumlength` (o espaço inicial do original era descartado pelo TeX no início do parágrafo mas contava na medição — a linha esticava e a folga dobrava: 5,98 pt ≈ 2 espaços). Medido agora: **2,99 pt = 1 espaço** (NBR 14724 §5.2.2). Ramo apêndice/anexo: "APÊNDICE A — …" com **travessão** e 2,99 pt de cada lado (os dois `\unskip` do bloco, documentados no código) |
| Cabeçalho corrente + filete no topo | ✅ Removido (12/10/2026, decisão do autor) | ABNT não prescreve cabeçalho corrente; "Capítulo N." era desaconselhado (Manual §2.6). `abntheadings` redefinido: só o número da página (anverso canto superior direito / verso superior esquerdo, §5.3 — o modelo é `oneside`, então sempre à direita), sem filete (`\makeheadrule` 0 pt) |
| Notas de rodapé | ✅ Conforme (12/10/2026) | NBR 14724 §5.2.1: filete de **5 cm** a partir da margem esquerda (`\setfootnoterule{3pt}{5cm}{...}`), notas em **espaço simples** com fonte menor (`\foottextfont=\ABNTEXfontereduzida\setSpacing{1}`) e 2ª linha alinhada sob a 1ª letra da 1ª palavra, sem espaço entre notas consecutivas. *Nota técnica:* `\SingleSpacing` do memoir quebra a 1ª linha da nota (expoente sozinho) — usar `\setSpacing{1}` |
| Rodapé / numeração | ✅ Conforme | Numeração no canto superior direito (§5.3); rodapé vazio |
| Resumo/Abstract — "Palavras-chave" logo abaixo | ✅ Corrigido (12/10/2026) | removido `\vspace{\onelineskip}` entre o resumo e o rótulo — pitch de 1 linha normal (NBR 6028 §4.1.7: palavras-chave "logo abaixo do resumo", sem linha em branco) |
| Epígrafe — espaçamento 1,5 | ✅ Corrigido (12/10/2026) | `01-pre-textuais/04-epigrafe.tex`: `SingleSpacing` → `OnehalfSpacing` (NBR 14724 §5.2 não excepciona a epígrafe); pitch medido 17,93 pt |
| Lista de algoritmos — nome, travessão e legenda | ✅ Corrigido (12/10/2026) | `\l@algocf` redefinido: entrada "Algoritmo 1 — Título … página" na margem esquerda (§4.2.1.9 por analogia); legenda "Algoritmo 1 — …" via `\SetAlgoCaptionSeparator{~\textemdash}` (antes ":" do `algorithm2e`) |
| Travessão em listas e legendas | ✅ Corrigido (12/10/2026) | `\cftfigureaftersnum`/`\cfttableaftersnum` e `\ABNTEXcaptiondelim` (em `structure.sty`; `nao-altere/` intocado) trocam `\textendash` por `\textemdash` — texto do §4.2.1.9/§4.2.1.10/§5.8. *Divergência interna da norma:* o **exemplo** do §5.8 usa meia-risca; prevalece o texto (decisão do autor: uniformizar em travessão) |
| Referências — 1 linha em branco entre entradas | ✅ Corrigido (12/10/2026) | `\AfterTheBibliography{\setlength{\itemsep}{\baselineskip}\setlength{\parskip}{0pt}}` — a folga de 33,71 pt vinha do `\parskip` herdado do `\parsep` do `\list` de `latex.ltx`; medida final **28,90 pt = 2 × 14,45** (linha em branco exata), com 14,45 pt dentro da entrada (NBR 14724 §5.2) |
| Apêndices/anexos — travessão no sumário e na folha | ✅ Corrigido (12/10/2026) | `\cftinsertcode{A}` com `\textemdash` (sumário) + ramo do `\printchapternum` (folha); medido **2,99 pt de cada lado** do travessão nos dois títulos (§4.2.3.3/4). *Observação:* no sumário a folga em volta do travessão é menor que 1 espaço (1,66–2,00 pt, efeito do `\hfill` dentro da coluna de numeração do memoir) — pré-existente, sem impacto visual, não prescrito pela norma |

### Correções recomendadas (pendentes)
1. ~~Epígrafe: avaliar espaçamento 1,0 → 1,5~~ — **RESOLVIDO** (12/10/2026): `OnehalfSpacing` em `04-epigrafe.tex`; pitch medido 17,93 pt (NBR 14724:2024 §5.2).
2. Resumo/Abstract: capitalizar as siglas nos exemplos de palavras-chave — "normativa do IFS; ABNT NBR 6028; formatação de TCC" (NBR 6028 §4.1.7); substituir os textos-exemplo por resumos reais (150–500 palavras, §4.1.8a). *(O espaço extra antes de "Palavras-chave" já foi corrigido.)*
3. ~~Lista de Algoritmos: entradas e legenda~~ — **RESOLVIDO** (12/10/2026): "Algoritmo 1 — Título … página" na lista e legenda "Algoritmo 1 — …" (analogia §4.2.1.9/§5.8).
4. Lista de símbolos: reordenar conforme aparição no texto (§4.2.1.12).
5. ~~meia-risca → travessão em apêndices/anexos (§4.2.3.3/4)~~ — **RESOLVIDO** (12/10/2026); **pendentes**: padronizar título "REFERÊNCIAS" em maiúsculas e unificar entradas kitchenham (NBR 6023 §7.7.6).
6. Decidir composição da banca (ABNT vs. IFS Art. 18) e fonte (Times original vs. `newtx`).
7. ~~Ficha catalográfica: corrigir numeração das palavras-chave~~ — **RESOLVIDO** (commit `07ed40e`, 13/09/2026).
8. ~~Cabeçalho corrente: decidir entre manter/remover~~ — **RESOLVIDO** (12/10/2026): cabeçalho corrente e filete removidos por decisão do autor; permanece só o número da página (NBR 14724 §5.3). Registrado que a ABNT não prescreve nem proíbe cabeçalho corrente.
9. ~~Siglas/símbolos: `labelwidth`~~ — **RESOLVIDO** (12/10/2026): ajustado de 6 em para **3 em** (+ `labelsep` 1,5 em) em `structure.sty`. Se aparecer sigla/símbolo mais largo que 3 em, ampliar o `labelwidth` ali (comentado no código).

### Decisões do autor (não reabrir)
- ***et al.* em itálico** — NBR 10520 §6.1.2 e NBR 6023 §8.1.1.2 grafam a expressão em itálico nos exemplos; o Manual ABNT 2024 §2.2 desaconselha itálico para expressões latinas. Seguiu-se a **norma técnica**; a divergência fica registrada.
- **Travessão (—) em listas, legendas e títulos de apêndice/anexo** — o texto da NBR 14724 (§4.2.1.9, §4.2.1.10, §5.8, §4.2.3.3/4) manda travessão, mas o **exemplo** do §5.8 usa meia-risca. Seguiu-se o texto normativo e uniformizou-se o documento; a divergência interna da norma fica registrada.
- **Sem cabeçalho corrente** (só o número da página, §5.3) — a ABNT não prescreve nem proíbe.
- **Hierarquia de negrito** — negrito até as secundárias, fonte regular da terciária em diante (inclusive no sumário); a norma é permissiva ("destacam-se gradativamente").

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
- Skills do projeto: `revisao-abnt` (conformidade ABNT), `revisao-documentacao`
  (documentação do código) e `revisor-academico` (revisão do TCC em produção que
  o estudante está escrevendo — nome no frontmatter `revisao-academica`), em
  **`.agents/skills/`** (padrão aberto agentskills.io).
  - Compatibilidade: Copilot (VS Code/CLI/cloud agent) ✅ lê `.agents/skills/`;
    OpenCode V2 ✅ lê via compatibilidade; Claude Code ⚠️ não documentado para
    esse local (opcional: adicionar symlink em `.claude/skills/`).
  - IDs das skills derivam do caminho (`revisao-abnt`, `revisao-documentacao`,
    `revisor-academico`);
    os nomes/descrições do frontmatter seguem o padrão kebab-case do Copilot.
- `README.md` lista o status TODO dos elementos ("Finalizado" etc.). Manter sincronizado.