---
name: revisao-abnt
description: Revisão criteriosa de conformidade ABNT do modelo LaTeX de TCC do IFS. Use quando o usuário pedir para revisar/verificar os arquivos marcados como "Finalizado" (ou qualquer elemento) do README contra as normas da pasta "Normas ABNT", ou para executar a análise crítica de conformidade ABNT/NBR no projeto.
---

# Revisão de Conformidade ABNT — Modelo LaTeX TCC IFS

Executa a análise crítica de conformidade dos elementos do modelo LaTeX de TCC
do IFS contra as normas ABNT (pasta `Normas ABNT`) e a Normativa Interna do IFS.
Nunca altera o conteúdo dos arquivos LaTeX sem ordem explícita do usuário;
por padrão, gera **somente relatório**.

## Fonte de verdade (persistência)

Toda a informação persistente — checkpoints normativos, normas consultadas,
estado atual de cada elemento (Conforme/Ajuste/Não conforme) e histórico — fica
em **`AGENTS.md`** na raiz do projeto. **Leia `AGENTS.md` antes de começar** e
**atualize-o ao final** de cada revisão para manter a memória.

## Fluxo de execução

1. **Ler o estado persistente.** Abra `AGENTS.md` e verifique os checkpoints, o
   estado registrado de cada elemento e as normas disponíveis.
2. **Determinar o escopo.** Por padrão, revisar os elementos marcados como
   "Finalizado" no `README.md`. Se o usuário especificar um elemento, focar nele.
3. **Consultar as normas.** Localizar os PDFs em `Normas ABNT/`. **Atenção:** essa
   pasta é gitignored (PDFs com direitos autorais) e não é versionada — se não
   existir localmente, prossiga usando os checkpoints de `AGENTS.md` e sinalize
   isso no relatório. Quando um PDF não puder ser lido diretamente, extrair texto
   com `pdftotext` (ver instruções de instalação em `AGENTS.md`). Normas-chave:
   - `ABNT-NBR-14724-2024` → estrutura (§4) e regras gerais (§5).
   - `ABNT-NBR-6028-2021` → resumo/abstract (§4.1).
   - `ABNT-NBR-6023-2025` → referências (§6.3).
   - `Manual_ABNT_2024` → orientações práticas dos elementos.
   - `material-de-apoio/Normativa Interna para TCC.pdf` → Art. 18, 31, 34.
4. **Compilar para validar a saída real.** Usar `latexmk -pdf -interaction=nonstopmode -halt-on-error main.tex`
   (garantir que `latexmk`/`pdflatex` estejam no `PATH`; ver `AGENTS.md` para instalação
   portátil). Verificar que o PDF gera sem erros e conferir páginas reais.
5. **Revisar elemento a elemento** contra os checkpoints em `AGENTS.md`.
   Se necessário, confirmar a saída real via `pdftotext -layout -f N -l N main.pdf` por página (este ambiente não lê imagens).
6. **Registrar o resultado.**
   - Atualizar `AGENTS.md` (estado de cada elemento revisado).
   - Gerar o relatório em `relatorio-revisao-abnt.md` (substituindo o anterior), com: **Status** (Conforme / Ajuste / Não conforme), **Fundamento** (cláusula da norma) e **Observação**.
7. **Divergências ABNT × Normativa IFS.** Apresentar sempre as duas posições lado a lado, **sem impor critério**, salvo se o usuário definir prioridade.

## Regras de revisão (checkpoints por elemento)

Consulte os detalhes em `AGENTS.md`. Resumo:
- **Capa** — ordem da NBR §4.1.1 (instituição, autor, título, subtítulo, volume, local, ano); fonte/tamanho da capa.
- **Folha de rosto** — ordem §4.2.1.1.1; natureza do meio→margem direita em espaço simples (§5.2).
- **Ficha catalográfica** — versão §4.2.1.1.2; não conta na paginação (§5.3); palavras-chave sem numeração duplicada.
- **Folha de aprovação** — §4.2.1.3; composição da banca (ABNT vs. IFS Art. 18).
- **Dedicatória / Epígrafe** — sem título, meio→margem direita, parte inferior (§5.2.4); espaçamento 1,5.
- **Agradecimentos** — título centralizado (§5.2.3).
- **Resumo / Abstract** — NBR 6028: parágrafo único, 3ª pessoa, 150–500 palavras, palavras-chave com ";" e minúsculas.
- **Lista de siglas** — ordem alfabética (§4.2.1.11).
- **Lista de símbolos** — ordem de aparição no texto (§4.2.1.12).
- **Referências** — espaço simples + alinhamento à esquerda + alfabético (NBR 6023 §6.3); antes de apêndices/anexos.
- **Apêndices / Anexos** — "APÊNDICE/A ANEXO A" + travessão (§4.2.3.3/§4.2.3.4).

## Observações

- Margens 3/2/3/2 e fonte 12 já são garantidas por `structure.sty`; verificar apenas se não houve regressão.
- Não ler arquivos PDF/imagens diretamente (o modelo não suporta); usar `pdftotext`.
- Após salvar alterações em arquivos de config (este skill, `AGENTS.md`), lembrar o usuário de reiniciar o opencode para que o skill seja carregado.