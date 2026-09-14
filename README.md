# Modelo LaTeX para TCC - Instituto Federal de Sergipe (IFS)

Este projeto é um modelo estruturado em LaTeX para a elaboração de Trabalhos de Conclusão de Curso (TCC) no âmbito do Instituto Federal de Sergipe. O modelo foi desenvolvido para ser universal, atendendo às normas da ABNT e às exigências específicas da Normativa Interna do IFS.

## Créditos e Atribuições
Este modelo foi organizado por **Mikael dos Santos Gois** discente de Ciência da Computação no IFS e baseia-se em contribuições de outros modelos consolidados:
- **Diogo D. Moreira**: Modelo de TCC, Dissertação e Tese.
- **DECOM/UFOP**: Modelo de Monografia de Ciência da Computação da Universidade Federal de Ouro Preto.
- **abnTeX2**: Classe LaTeX que segue as normas da ABNT.

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
- `nao-altere/`: Arquivos de classe e estilo (.cls, .sty, .bst) que garantem a formatação.


## TODO e Status de Revisão

Esta seção lista os elementos do modelo que já foram revisados e finalizados, bem como aqueles que ainda estão em processo de revisão ou ajustes.

### Elementos Pré-Textuais

- [x] Capa (`\imprimircapa`) - Finalizado
- [x] Folha de rosto (`\imprimirfolhaderosto`) - Finalizado
- [x] Ficha Catalográfica de exemplo (`01-pre-textuais/00-folha-catalografica`) -Finalizado
- [x] Folha de Aprovação de exemplo (`01-pre-textuais/01-folha-aprovacao`) - Finalizado
- [X] Dedicatória (`01-pre-textuais/02-dedicatoria`) - Finalizado
- [X] Agradecimentos (`01-pre-textuais/03-agradecimentos`) - Finalizado
- [X] Epígrafe (`01-pre-textuais/04-epigrafe`) - Finalizado
- [X] Resumo (`01-pre-textuais/05-resumo-pt`) - Finalizado
- [X] Abstract (`01-pre-textuais/06-abstract-en`) - Finalizado
- [X] Lista de Figuras/Ilustrações (`\listfigurename`) - Finalizado
- [X] Lista de Algoritmos (`\listofalgorithms`) - Revisar diagramação/formatação
- [ ] Lista de Tabelas (`\listtablename`)
- [X] Lista de Abreviaturas e Siglas (`01-pre-textuais/07-lista-abreviaturas-siglas`) - Revisar diagramação/formatação
- [X] Lista de Símbolos (`01-pre-textuais/08-lista-simbolos`) - Revisar diagramação/formatação
- [ ] Sumário (`\contentsname`) - Revisar diagramação/formatação

### Elementos Textuais
- [X] Introdução (`02-textuais/01-01-introducao`) - Finalizado
- [X] Fundamentação Teórica (`02-textuais/02-fundamentacao-teorica.tex`) - Finalizado
- [ ] Trabalhos Correlatos (`02-textuais/03-trabalhos-correlatos`)
- [ ] Metodologia (`02-textuais/04-metodologia`)
- [ ] Resultados e Discussão (`02-textuais/05-resultados-discussao`)
- [ ] Conclusão (`02-textuais/06-conclusao`)

### Elementos Pós-Textuais
- [X] Referências (`\bibliography{referencias}`) - Revisar diagramação/formatação
- [ ] Glossário (`03-pos-textuais/`)
- [X] Apêndices (`03-pos-textuais/01-apendices`) - Revisar diagramação/formatação
- [X] Anexos (`03-pos-textuais/02-anexos`) - Revisar diagramação/formatação
- [ ] Índice (`03-pos-textuais/`)

---

## Como Usar
1. Abra o arquivo `main.tex` e preencha seus dados na seção indicada.
2. Edite o conteúdo pré-textual nos arquivos numerados dentro da pasta `01-pre-textuais/`.
3. Edite o conteúdo textual nos arquivos numerados dentro da pasta `02-textuais/`.
4. Edite o conteúdo pós-textual nos arquivos numerados dentro da pasta `03-pos-textuais/`.
5. Adicione suas referências no arquivo `referencias.bib`.

### Referência rápida de comandos
Este modelo já contém comentários `%` instrutivos nos arquivos `.tex`. Abaixo,
os comandos principais que você usará com mais frequência. Itens marcados como
*(comum adicional)* são usos comuns de LaTeX, ainda sem exemplo direto no modelo.

| Grupo | Comandos |
|-------|----------|
| **Seções** | `\chapter[Título no Bookmark]{TÍTULO}`, `\section{}`, `\subsection{}`, `\subsubsection{}` |
| **Referência cruzada** | `\label{sec:exemplo}` define o rótulo; `\ref{sec:exemplo}` imprime o número |
| **Citações** | `\cite{chave}` (indireta, autor/ano), `\citeonline{chave}` (nominal), `\cite[text]{chave}` (com trecho/página) |
| **Fonte de ilustração** | `\fonte{Adaptada de \citeonline{chave}.}` ou `\fonte{Elaborada pelo autor (2026).}` |
| **Figuras** | `figure`, `\centering`, `\caption{}`, `\includegraphics[width=]{caminho}`, `\label{}`, `\fonte{}` |
| **Tabelas / Quadros** | `table`/`tabular` ou `quadro`, `\caption`, `\fonte`, `\label` *(comum adicional)* |
| **Algoritmos** | `algorithm` (com `listings`), `\caption`, `\label`, `language=Java` *(ver `02-textuais/04-metodologia.tex`)* |
| **Equações** | `equation`, `\label`, `\ref` *(comum adicional)* |
| **Pré-textuais** | `\imprimircapa`, `\imprimirfolhaderosto`, `\pretextual`, `\textual`, `\postextual` |
| **Dados do trabalho** | `\titulo`, `\subtitulo`, `\autor`, `\orientador`, `\coorientador`, `\local`, `\uf`, `\ano`, `\preambulo` |
| **Listas automáticas** | `\listoffigures*`, `\listoftables*`, `\listofalgorithms`, `\tableofcontents*` |
| **Referências** | `\bibliography{referencias}` (dados em `referencias.bib`) |
| **Apêndice / Anexo** | `\begin{apendicesenv}`, `\partapendices`, `\appendixname` |

**Sobre cores:** conforme a NBR 14724:2024 (5.1), os textos devem ser em cor
preta (cores somente para ilustrações). Por isso o código-fonte é renderizado em
preto e branco, com destaque por negrito/itálico (ver `structure.sty`).
