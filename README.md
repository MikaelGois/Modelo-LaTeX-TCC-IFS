<!--
=======================================================================================
MODELO DE TCC - INSTITUTO FEDERAL DE SERGIPE (IFS)
=======================================================================================
Autores do Modelo (discentes de Ciência da Computação - IFS, Campus Itabaiana):
  Mikael dos Santos Gois
  Talyson Rodrigues Silva Nascimento
  Kauan Gutierrez Santos Estácio
Modelo Base: abnTeX2, adaptado para as normativas internas de TCC do IFS (Art. 31 e 34)
Créditos dos modelos base (abnTeX2, DECOM/UFOP e Diogo D. Moreira) e das imagens: ver NOTICE
Licença: CC BY-SA 4.0 (ver LICENSE)
Este arquivo faz parte de um modelo opensource para estudantes do IFS.
Não remova os créditos dos autores originais e do modelo base.
Este modelo é fornecido "no estado em que se encontra", sem garantias de qualquer tipo.
=======================================================================================
-->

# Modelo LaTeX para TCC - Instituto Federal de Sergipe (IFS)

Este projeto é um modelo estruturado em LaTeX para a elaboração de Trabalhos de Conclusão de Curso (TCC) no âmbito do Instituto Federal de Sergipe. O modelo foi desenvolvido para ser universal, atendendo às normas da ABNT e às exigências específicas da Normativa Interna do IFS.

> **Leia antes de usar**
>
> - [**Termo de isenção de responsabilidade**](DISCLAIMER.md) — o que o modelo faz, o que ele **não** garante e de quem é a responsabilidade final.
> - [**Créditos, licenças e atribuições**](NOTICE) — autores do modelo, abnTeX2 (LPPL 1.3c), DECOM/UFOP, Diogo D. Moreira e imagens.
> - Resumo de tudo na seção [Licença e créditos](#licença-e-créditos).

## Termo de isenção de responsabilidade

O texto completo está em [DISCLAIMER.md](DISCLAIMER.md). Em resumo:

Este modelo tem **propósito educacional**: ajudar a montar o TCC em LaTeX no formato exigido.

- O modelo **não substitui as normas**. Quem usa tem o **dever de conferir** a ABNT NBR 14724 e as normas correlatas (NBR 6023, NBR 6024, NBR 6027, NBR 6028, NBR 6034, NBR 10520, NBR 12225), as **Normas de apresentação tabular do IBGE** e a **Normativa Interna de TCC do IFS** vigente.
- Normas são revisadas periodicamente: uma edição nova pode tornar algum detalhe do modelo desatualizado.
- O modelo é fornecido **no estado em que se encontra** (*as is*), **sem garantias** de qualquer tipo.
- A conferência final do trabalho é **responsabilidade do autor**, em conjunto com orientação e banca.

**Encontrou divergência entre a norma e o modelo?** Abra uma *issue* — é assim que o modelo melhora. Veja [Como contribuir](#como-contribuir).

## Como usar

### Requisitos

Uma distribuição TeX com `latexmk`, `pdflatex` e `bibtex`:

| Opção | Como obter |
|-------|------------|
| [MiKTeX](https://miktex.org/) | instalador do site (Windows); já inclui o `latexmk` |
| [TeX Live](https://tug.org/texlive/) | instalador do site ou o pacote da sua distribuição Linux |
| [Overleaf](https://www.overleaf.com/) | nada a instalar — veja [Usar no Overleaf](#usar-no-overleaf) |

### Pacotes que podem precisar ser baixados

O modelo usa pacotes que **não** vêm em toda instalação mínima (por exemplo `abntex2`, `newtx`, `algorithm2e`, `booktabs`, `enumitem`, `microtype`). Como resolver:

- **MiKTeX:** ele instala sozinho na primeira compilação — basta aceitar o download quando perguntar (é preciso estar conectado à internet). Se a instalação automática estiver desligada, ligue em *MiKTeX Console > Settings > Install packages on-the-fly*.
- **TeX Live:**

  ```
  tlmgr install abntex2 newtx algorithm2e listings booktabs dcolumn enumitem microtype bookmark babel-portugues relsize etoolbox xpatch iftex setspace textcomp tools geometry hyperref amsmath graphics
  ```

  No Ubuntu/Debian, `sudo apt install texlive-latex-extra latexmk` já cobre a maioria (mais `texlive-lang-portuguese` para o `babel-portuges`).
- **Overleaf:** nada a fazer — a plataforma já tem os pacotes instalados.

> Se a compilação parar com `File '<pacote>.sty' not found`, falta esse pacote: instale com `tlmgr install <pacote>` (TeX Live) ou deixe o MiKTeX baixar. A mensagem de erro e o caminho completo ficam em `main.log`.

### Passo a passo

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

### Usar no VS Code

O [VS Code](https://code.visualstudio.com/) compila LaTeX com a extensão [**LaTeX Workshop**](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop): pré-visualização do PDF, navegação entre código e PDF, log de erro e compilação automática.

A extensão é só a interface — ela **precisa** de um motor TeX instalado (MiKTeX ou TeX Live, veja [Requisitos](#requisitos)). Ela compila com `latexmk`, o mesmo comando usado neste modelo, então não é preciso configurar nada.

1. Instale o MiKTeX ou o TeX Live.
2. Instale a extensão LaTeX Workshop no VS Code.
3. Abra a **pasta** do modelo (**File > Open Folder**), não apenas o arquivo `main.tex` — a extensão precisa enxergar as subpastas (`01-pre-textuais/`, `02-textuais/` etc.).
4. Abra `main.tex` e compile com **Ctrl+Alt+B** (ou o botão *Build*); o PDF aparece na aba ao lado e os erros em **Output > LaTeX Compiler**.

### Usar no Overleaf

Se preferir não instalar nada, o modelo roda no [Overleaf](https://www.overleaf.com/), inclusive no plano gratuito, com o compilador padrão do modelo (`pdfLaTeX`).

1. Baixe o modelo: no GitHub, **Code > Download ZIP** (ou use o ZIP da versão que você quer).
2. No Overleaf: **New Project > Upload Project** e selecione o `.zip`.
3. Confirme o arquivo principal (`main.tex`) e o compilador em **Menu > Settings > Compiler = pdfLaTeX**.
4. Compile (**Recompile**). O `bibtex` roda junto, como no `latexmk`.

Pontos de atenção:

- **Envie a pasta `nao-altere/`** junto: ela faz parte do projeto (não é redistribuída separadamente).
- As fontes "originais" (`style-font-times-new-roman.sty` e `style-font-arial.sty`) exigem LuaLaTeX/XeLaTeX e podem não funcionar no plano gratuito do Overleaf. O padrão do modelo (`style-font-newtx.sty`) compila em pdfLaTeX; se precisar da fonte original, use instalação local (ou VS Code) com LuaLaTeX.

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

## Autores e contribuidores

O modelo é mantido por discentes do curso de **Ciência da Computação** do **Instituto Federal de Sergipe (IFS) - Campus Itabaiana**:

- **Mikael dos Santos Gois**
- **Talyson Rodrigues Silva Nascimento**
- **Kauan Gutierrez Santos Estácio**

Este modelo **não é vinculado a um trabalho específico**: é um template geral para os TCCs do curso. Os dados do trabalho de quem usa (título, autor, orientador, instituição, ano) são preenchidos em `main.tex`.

Citar o modelo no seu trabalho é **opcional** (recomendado, não exigido): veja os textos prontos em [O que é obrigatório e o que é recomendado](#o-que-é-obrigatório-e-o-que-é-recomendado).

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
- [X] Fundamentação Teórica (`02-textuais/02-fundamentacao-teorica`) - Finalizado
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
- **Disponível em**: [site institucional do IFS](https://www.ifs.edu.br/) — consulte a versão vigente na coordenação do curso.

<!-- TODO: inserir aqui a URL direta da Normativa Interna de TCC vigente, quando publicada pelo IFS. -->

### Normas ABNT e IBGE

- **ABNT NBR 14724:2024** — Informação e documentação: trabalhos acadêmicos: apresentação. Disponível em: [GEDWEB do IFS](https://gedweb.com.br/ifs/).
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

### Manual de normalização (Manual ABNT - FECAP)

- **MANUAL ABNT** (7. ed., 2026) — manual de normalização mantido pela FECAP, usado neste modelo como **apoio** na conferência de formatação (é a fonte, por exemplo, do recuo de **1,25 cm** na primeira linha do parágrafo e da fonte **10 pt** para notas, paginação e fontes/legendas de ilustrações e tabelas). Disponível em: [Manual ABNT (7. ed., 2026)](https://www.fecap.br/files/docs/biblioteca/Manual_ABNT_7edicao_2026.pdf).
  A revisão de conformidade deste modelo (out./2026) consultou a **6ª edição**; os pontos utilizados foram **reconferidos na 7ª edição** (§2.2 Fontes e §2.5 Parágrafos, espaçamento e alinhamento).

### Modelos LaTeX de referência

Este modelo baseia-se em contribuições de outros modelos consolidados:

- **[Modelo de Monografia de Ciência da Computação - DECOM/UFOP](https://pt.overleaf.com/latex/templates/modelo-de-monografia-de-ciencia-da-computacao-da-universidade-federal-de-ouro-preto/hjxshhwjccfy)** — licença CC BY 4.0.
- **[Modelo de TCC, Dissertação e Tese - Diogo D. Moreira](https://pt.overleaf.com/latex/templates/modelo-de-tcc-dissertacao-e-tese/bmqhgkbsftjy)** — licença CC BY 4.0 (baseado no template dos professores Ricardo Luis dos Santos e Cristiano Santos Pereira de Abreu e no abnTeX2).
- **[abnTeX2](https://www.abntex.net.br/)** — classe LaTeX para as normas ABNT, licença LPPL 1.3c.

## Licença e créditos

- **Conteúdo deste modelo** (textos, estrutura, documentação e exemplos): **Creative Commons Atribuição-CompartilhaIgual 4.0 Internacional (CC BY-SA 4.0)** — veja [LICENSE](LICENSE).
- **Arquivos da pasta `nao-altere/`**: permanecem sob a licença original do **abnTeX2** (LPPL 1.3c) e mantêm os créditos dos autores originais.
- Créditos completos, imagens e atribuições: veja [NOTICE](NOTICE).

### O que é obrigatório e o que é recomendado

**Obrigatório** — vale para quem **redistribui ou adapta** o modelo (exigência das licenças): manter o arquivo [LICENSE](LICENSE), o [NOTICE](NOTICE) e os cabeçalhos de crédito nos arquivos. Os arquivos de `nao-altere/` seguem sob a LPPL 1.3c do abnTeX2.

**Recomendado, mas não obrigatório** — citar o modelo no **seu TCC**. O trabalho é seu: você não precisa de autorização para usá-lo nem de nota de crédito no texto. Se quiser registrar o uso (é uma boa prática e ajuda outros estudantes a encontrar o modelo), use um dos textos abaixo, ajustando o ano e o endereço.

Em agradecimentos (ou em nota de rodapé):

> Este trabalho foi elaborado com o modelo LaTeX para TCC do Instituto Federal de Sergipe (IFS), desenvolvido por Mikael dos Santos Gois, Talyson Rodrigues Silva Nascimento e Kauan Gutierrez Santos Estácio.

Nas referências (NBR 6023 — ajuste o ano e a data de acesso):

> MODELO LaTeX para TCC do Instituto Federal de Sergipe. Autores: Mikael dos Santos Gois; Talyson Rodrigues Silva Nascimento; Kauan Gutierrez Santos Estácio. Itabaiana: IFS, 2026. Disponível em: [endereço do repositório]. Acesso em: 9 nov. 2026.
