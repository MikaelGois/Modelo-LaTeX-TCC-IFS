<!--
=======================================================================================
MODELO DE TCC - INSTITUTO FEDERAL DE SERGIPE (IFS)
=======================================================================================
Autor do Modelo: Mikael dos Santos Gois
Modelo Base: abnTeX2 adaptado para as normativas internas de TCC do IFS
Licença: Creative Commons Atribuição-CompartilhaIgual 4.0 (CC BY-SA 4.0) - ver LICENSE
Créditos e atribuições: ver NOTICE
Não remova os créditos dos autores originais e do modelo base.
=======================================================================================
-->

# Modelo LaTeX para TCC - Instituto Federal de Sergipe (IFS)

Este projeto é um modelo estruturado em LaTeX para a elaboração de Trabalhos de Conclusão de Curso (TCC) no âmbito do Instituto Federal de Sergipe. O modelo foi desenvolvido para ser universal, atendendo às normas da ABNT e às exigências específicas da Normativa Interna do IFS.

## Termo de isenção de responsabilidade

Este modelo tem **propósito educacional**: ajudar a montar o TCC em LaTeX no formato exigido.

- O modelo **não substitui as normas**. Quem usa tem o **dever de conferir** a ABNT NBR 14724 e as normas correlatas (NBR 6023, NBR 6024, NBR 6027, NBR 6028, NBR 6034, NBR 10520, NBR 12225), as **Normas de apresentação tabular do IBGE** e a **Normativa Interna de TCC do IFS** vigente.
- Normas são revisadas periodicamente: uma edição nova pode tornar algum detalhe do modelo desatualizado.
- O modelo é fornecido **no estado em que se encontra** (*as is*), **sem garantias** de qualquer tipo.
- A conferência final do trabalho é **responsabilidade do autor**, em conjunto com orientação e banca.

**Encontrou divergência entre a norma e o modelo?** Abra uma *issue* — é assim que o modelo melhora. Veja [Como contribuir](#como-contribuir).

## Como usar

**Requisitos:** uma distribuição TeX com `latexmk` e `pdflatex`
([MiKTeX](https://miktex.org/) ou [TeX Live](https://tug.org/texlive/)) e o `bibtex` (já vem com as duas).

1. Abra o arquivo `main.tex` e preencha seus dados na seção indicada (título, autor, orientador, instituição etc.).
2. Edite o conteúdo pré-textual nos arquivos numerados dentro da pasta `01-pre-textuais/`.
3. Edite o conteúdo textual nos arquivos numerados dentro da pasta `02-textuais/`.
4. Edite o conteúdo pós-textual nos arquivos numerados dentro da pasta `03-pos-textuais/`.
5. Adicione suas referências no arquivo `referencias.bib`.
6. Compile:

```
latexmk -pdf -interaction=nonstopmode -halt-on-error main.tex
```

> Na primeira compilação, o `latexmk` roda também o `bibtex` (necessário para as citações e referências).
> Para compilar do zero: `latexmk -C` e depois o comando acima.

Os arquivos `.tex` trazem comentários `% DICA` e `% EXEMPLO` explicando cada elemento. Substitua os textos de exemplo pelo seu conteúdo e **remova os exemplos** que não usar.

### Skills do assistente (`.agents/skills/`)

Se você usa este modelo com um assistente de IA (VS Code/Copilot, OpenCode etc.), três skills já vêm prontas (reinicie a sessão após clonar para carregá-las):

| Skill | Uso |
|-------|-----|
| `revisor-academico` | **Revisão do seu TCC em produção**: estrutura (IFS Art. 31), extensão mínima (Art. 35), formatação (Art. 34), redação (Art. 22), citações (NBR 10520), resumo (NBR 6028) e referências (NBR 6023) — com arquivo, linha, nível de impacto e sugestão por achado. |
| `revisao-abnt` | Verifica a conformidade do **modelo/template** com as normas ABNT (uso do mantenedor do repositório). |
| `revisao-documentacao` | Verifica os comentários instrutivos do código LaTeX (uso do mantenedor). |

## Como contribuir

### Abrir uma issue (problema, dúvida ou divergência com a norma)

1. Verifique se já existe uma issue parecida em [Issues](https://github.com/MikaelGois/Modelo-LaTex-TCC-IFS/issues).
2. Clique em **New issue** e escolha o modelo correspondente:
   - **Divergência ABNT/IBGE** — informe: a norma e a cláusula (ex.: `NBR 14724:2024, 5.2.2`), o arquivo e a linha, **o que o modelo faz** e **o que a norma pede**, e a medição, se houver.
   - **Erro de compilação / bug** — informe: sistema operacional, distribuição TeX (MiKTeX/TeX Live) e versão, o log do erro e os passos para reproduzir.
3. Se puder, anexe um recorte do PDF (página) mostrando o problema.
4. Se a divergência for entre **normas** (ABNT x Normativa do IFS x Manual ABNT), informe **as duas posições**: o projeto registra as duas, sem impor critério.

### Enviar uma correção (pull request)

1. Crie uma branch (`fix/…`, `docs/…` ou `feat/…`) — **nunca** commite direto na `main`.
2. Compile e confirme **0 erros**: `latexmk -pdf -interaction=nonstopmode -halt-on-error main.tex`.
3. Se a correção for de diagramação/formatação, informe a **medição** (antes e depois).
4. **Não edite** a pasta `nao-altere/` (arquivos do abnTeX2).
5. Abra o pull request descrevendo o problema, a cláusula aplicada e o que mudou.

## Informações do Projeto

- **Título:** Luso: Um Ecossistema Opensource para o Ensino Localizado de Programação.
- **Autor:** Mikael dos Santos Gois.
- **Orientador:** Prof. Me. Marlos Tacio Silva.
- **Coorientador:** Prof. Me. Levi da Costa Mota.
- **Instituição:** Instituto Federal de Sergipe (IFS) - Campus Itabaiana.
- **Ano:** 2026.

## Estrutura do Projeto

- `01-pre-textuais/`: Elementos obrigatórios e opcionais que antecedem o texto.
- `02-textuais/`: Os capítulos principais do seu trabalho.
- `03-pos-textuais/`: Apêndices e anexos.
- `figuras/`: Pasta para armazenar todas as imagens (incluindo a logo do IFS).
- `nao-altere/`: Arquivos de classe e estilo (.cls, .sty, .bst) do abnTeX2 que garantem a formatação. **Não editar.**
- `.agents/skills/`: Skills de assistente de IA (revisão acadêmica, ABNT e documentação).

## TODO e Status de Revisão

Esta seção lista os elementos do modelo que já foram revisados e finalizados, bem como aqueles que ainda estão em processo de revisão ou ajustes.

### Elementos Pré-Textuais

- [x] Capa (`\imprimircapa`) - Finalizado
- [x] Folha de rosto (`\imprimirfolhaderosto`) - Finalizado
- [x] Ficha Catalográfica de exemplo (`01-pre-textuais/00-folha-catalografica`) - Finalizado
- [x] Folha de Aprovação de exemplo (`01-pre-textuais/01-folha-aprovacao`) - Revisar diagramação/formatação
- [X] Dedicatória (`01-pre-textuais/02-dedicatoria`) - Finalizado
- [X] Agradecimentos (`01-pre-textuais/03-agradecimentos`) - Finalizado
- [X] Epígrafe (`01-pre-textuais/04-epigrafe`) - Finalizado
- [X] Resumo (`01-pre-textuais/05-resumo-pt`) - Revisar diagramação/formatação
- [X] Abstract (`01-pre-textuais/06-abstract-en`) - Revisar diagramação/formatação
- [X] Lista de Figuras/Ilustrações (`\listfigurename`) - Finalizado
- [X] Lista de Algoritmos (`\listofalgorithms`) - Finalizado
- [X] Lista de Tabelas (`\listtablename`) - Finalizado
- [X] Lista de Quadros (`\listofquadros`) - Finalizado
- [X] Lista de Abreviaturas e Siglas (`01-pre-textuais/07-lista-abreviaturas-siglas`) - Finalizado
- [X] Lista de Símbolos (`01-pre-textuais/08-lista-simbolos`) - Finalizado
- [X] Sumário (`\contentsname`) - Finalizado

### Elementos Textuais
- [X] Introdução (`02-textuais/01-introducao`) - Finalizado
- [X] Fundamentação Teórica (`02-textuais/02-fundamentacao-teorica.tex`) - Finalizado
- [X] Trabalhos Correlatos (`02-textuais/03-trabalhos-correlatos`) - Finalizado
- [X] Metodologia (`02-textuais/04-metodologia`) - Finalizado
- [ ] Resultados e Discussão (`02-textuais/05-resultados-discussao`)
- [ ] Conclusão (`02-textuais/06-conclusao`)

### Elementos Pós-Textuais
- [X] Referências (`\bibliography{referencias}`) - Finalizado
- [ ] Glossário (`03-pos-textuais/`)
- [X] Apêndices (`03-pos-textuais/01-apendices`) - Finalizado
- [X] Anexos (`03-pos-textuais/02-anexos`) - Finalizado
- [ ] Índice (`03-pos-textuais/`)

### Referência rápida de comandos

Este modelo já contém comentários `%` instrutivos nos arquivos `.tex`. Abaixo, os comandos principais que você usará com mais frequência. Itens marcados como *(comum adicional)* são usos comuns de LaTeX, ainda sem exemplo direto no modelo.

| Grupo | Comandos |
|-------|----------|
| **Seções** | `\chapter[Título no Bookmark]{TÍTULO}`, `\section{}`, `\subsection{}`, `\subsubsection{}` |
| **Referência cruzada** | `\label{sec:exemplo}` define o rótulo; `\ref{sec:exemplo}` imprime o número |
| **Citações** | `\cite{chave}` (indireta, autor/ano), `\citeonline{chave}` (autor como sujeito da frase), `\cite[p. 10]{chave}` (direta, com página), `\citeonline[p. 10]{chave}` (direta, autor no texto) |
| **Fonte de ilustração** | `\fonte{Adaptada de \citeonline{chave}.}` ou `\fonte{Elaborada pelo autor (2026).}` |
| **Figuras** | `figure`, `\centering`, `\caption{}`, `\includegraphics[width=]{caminho}`, `\label{}`, `\fonte{}` |
| **Tabelas** | `table` + `tabular` — para **dados numéricos** (padrão IBGE: sem traços verticais nas laterais, no mínimo 3 traços horizontais) |
| **Quadros** | `quadro` + `tabular` — para **dados textuais**; formato `QUADRO 1 — Título` + `\fonte{}` (ver `02-textuais/03-trabalhos-correlatos.tex`) |
| **Algoritmos** | `algorithm` (com `listings`), `\caption`, `\label`, `language=Java` (ver `02-textuais/04-metodologia.tex`) |
| **Equações** | `equation`, `\label`, `\ref` (ver NBR 14724:2024, 5.7) |
| **Pré-textuais** | `\imprimircapa`, `\imprimirfolhaderosto`, `\pretextual`, `\textual`, `\postextual` |
| **Dados do trabalho** | `\titulo`, `\subtitulo`, `\autor`, `\orientador`, `\coorientador`, `\local`, `\uf`, `\ano`, `\preambulo` |
| **Listas automáticas** | `\listoffigures*`, `\listoftables*`, `\listofquadros`, `\listofalgorithms`, `\tableofcontents*` |
| **Referências** | `\bibliography{referencias}` (dados em `referencias.bib`) |
| **Opções de estilo (abntex2cite)** | `\citeoption{opcoes-abnt}` (em `main.tex`) lê a entrada `@abnt-options` de `referencias.bib` — é ela que gera *et al.* em itálico e a caixa do sobrenome nas citações |
| **Apêndice / Anexo** | `\begin{apendicesenv}`, `\partapendices`, `\appendixname` |

**Sobre cores:** conforme a NBR 14724:2024 (5.1), os textos devem ser em cor preta (cores somente para ilustrações). Por isso o código-fonte é renderizado em preto e branco, com destaque por negrito/itálico (ver `structure.sty`).

## Material de apoio

### Normativa Interna de TCC do IFS

- **Instituição**: Instituto Federal de Sergipe (IFS)
- **Disponível em**: site institucional do IFS (<https://www.ifs.edu.br/>) — consulte a versão vigente na coordenação do curso.

<!-- TODO: inserir aqui a URL direta da Normativa Interna de TCC vigente, quando publicada pelo IFS. -->

### Normas ABNT e IBGE

- **ABNT NBR 14724:2024** — Informação e documentação: trabalhos acadêmicos: apresentação. Disponível em: [Target Gedweb - IFS](https://gedweb.com.br/ifs/).
- **Normas de apresentação tabular** — IBGE. 3. ed. Rio de Janeiro, 1993.

Normas ABNT citadas pela NBR 14724 e usadas na formatação deste modelo:

- ABNT NBR 6023 — Referências — Elaboração
- ABNT NBR 6024 — Numeração progressiva das seções de um documento — Apresentação
- ABNT NBR 6027 — Sumário — Apresentação
- ABNT NBR 6028 — Resumo, resenha e recensão — Apresentação
- ABNT NBR 6034 — Índice — Apresentação
- ABNT NBR 10520 — Citações em documentos — Apresentação
- ABNT NBR 12225 — Lombada — Apresentação

> As normas ABNT são protegidas por direitos autorais e **não** são redistribuídas neste repositório. Use o acesso institucional (GEDWEB/campus) para consultá-las.

### Modelos LaTeX de referência

Este modelo baseia-se em contribuições de outros modelos consolidados:

- **Modelo de Monografia de Ciência da Computação da Universidade Federal de Ouro Preto** — DECOM/UFOP, licença CC BY 4.0. Disponível em: <https://pt.overleaf.com/latex/templates/modelo-de-monografia-de-ciencia-da-computacao-da-universidade-federal-de-ouro-preto/hjxshhwjccfy>
- **Modelo de TCC, Dissertação e Tese** — Diogo D. Moreira, licença CC BY 4.0 (baseado no template dos professores Ricardo Luis dos Santos e Cristiano Santos Pereira de Abreu e no abnTeX2). Disponível em: <https://pt.overleaf.com/latex/templates/modelo-de-tcc-dissertacao-e-tese/bmqhgkbsftjy>
- **abnTeX2** — classe LaTeX para as normas ABNT, licença LPPL 1.3c. Disponível em: <https://www.abntex.net.br/>

## Licença e créditos

- **Conteúdo deste modelo** (textos, estrutura, documentação e exemplos): **Creative Commons Atribuição-CompartilhaIgual 4.0 Internacional (CC BY-SA 4.0)** — veja [LICENSE](LICENSE).
- **Arquivos da pasta `nao-altere/`**: permanecem sob a licença original do **abnTeX2** (LPPL 1.3c) e mantêm os créditos dos autores originais.
- Créditos completos, imagens e atribuições: veja [NOTICE](NOTICE).

Ao usar ou adaptar este modelo, **mantenha os créditos** dos autores originais e do modelo base (abnTeX2, DECOM/UFOP, Diogo D. Moreira).
