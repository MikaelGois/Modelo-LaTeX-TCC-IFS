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

Esta seção lista os elementos do modelo que já foram revisados e estão marcados como **finalizados** (comentário `OK` no arquivo `main.tex`).

### Elementos Finalizados

- Capa (`\imprimircapa`)
- Folha de rosto (`\imprimirfolhaderosto`)
- Ficha Catalográfica de exemplo (`01-pre-textuais/00-folha-catalografica`)
- Folha de aprovação de exemplo (`01-pre-textuais/01-folha-aprovacao`)

Os demais elementos ainda podem passar por revisões ou ajustes.

---

## Como Usar
1. Abra o arquivo `main.tex` e preencha seus dados na seção indicada.
2. Edite o conteúdo pré-textual nos arquivos numerados dentro da pasta `01-pre-textuais/`.
3. Edite o conteúdo textual nos arquivos numerados dentro da pasta `02-textuais/`.
4. Edite o conteúdo pós-textual nos arquivos numerados dentro da pasta `03-pos-textuais/`.
5. Adicione suas referências no arquivo `referencias.bib`.