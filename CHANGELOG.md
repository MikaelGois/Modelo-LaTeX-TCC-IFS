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

# Histórico de versões

Este projeto segue o [Versionamento Semântico (SemVer 2.0.0)](https://semver.org/lang/pt-BR/).

Para um modelo LaTeX, a "interface pública" é o que o usuário escreve em `main.tex` e
nos arquivos de `01-pre-textuais/`, `02-textuais/` e `03-pos-textuais/` (comandos,
ambientes e opções) e o formato do PDF resultante. Assim:

- **MAJOR** — o documento do usuário deixa de compilar, ou um comando/ambiente muda de
  nome, assinatura ou significado (é preciso editar o arquivo do TCC);
- **MINOR** — funcionalidade nova ou ajuste de formatação **compatível**: o documento
  continua compilando sem nenhuma alteração;
- **PATCH** — correção de erro, comentário ou documentação, sem mudar a saída esperada.

## [1.1.0] - 2026-11-09

### Adicionado

- Ambiente `quadro` para dados **textuais** e lista própria **LISTA DE QUADROS**
  (`\listofquadros`), separando quadro de tabela conforme a NBR 14724.
- Exemplo de **tabela numérica** no padrão IBGE (sem traços verticais nas laterais, no
  mínimo três traços horizontais e unidade de medida no cabeçalho).
- `CITATION.cff` (habilita o botão **Cite this repository** do GitHub, com saída em APA
  e BibTeX) e este `CHANGELOG.md`.
- Guia de uso: VS Code com a extensão **LaTeX Workshop**, uso no **Overleaf** (upload do
  ZIP) e lista de pacotes que podem precisar ser baixados.
- Textos prontos para citar o modelo no TCC (opcional) e seção sobre **autoria e vínculo
  institucional** (iniciativa discente independente, não oficial do IFS).

### Alterado

- Recuo da primeira linha do parágrafo em **1,25 cm** (Manual ABNT).
- Citações no padrão da **NBR 10520:2023** (sobrenome em caixa mista) e referências com
  **todos** os autores (`abnt-etal-list = 0`).
- Título **REFERÊNCIAS** em maiúsculas; palavras-chave do resumo e do abstract com
  siglas em maiúsculas.
- Lista de símbolos em **ordem de aparição** no texto.
- Espaçamento antes e depois das subsubseções uniformizado com os demais níveis.
- README reescrito (requisitos, pacotes, editores e plataformas, links) e cabeçalho de
  créditos padronizado em todos os arquivos.
- `AGENTS.md` passa a documentar as regras de versionamento SemVer que o agente deve
  seguir a cada atualização.

### Corrigido

- Data de acesso das referências no padrão da NBR 6023 (`01 jan. 2026`).

## [1.0.0] - 2026-10-31

Primeira versão pública: modelo completo (elementos pré-textuais, textuais e
pós-textuais) em abnTeX2, adaptado às normas ABNT e à Normativa Interna de TCC do IFS,
com licença CC BY-SA 4.0, `NOTICE` de créditos e README público.
