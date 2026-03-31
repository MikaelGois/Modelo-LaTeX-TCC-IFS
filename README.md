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

- [x] Capa (`\imprimircapa`)
- [x] Folha de rosto (`\imprimirfolhaderosto`)
- [x] Ficha Catalográfica de exemplo (`01-pre-textuais/00-folha-catalografica`)
- [x] Folha de aprovação de exemplo (`01-pre-textuais/01-folha-aprovacao`)
- [ ] Dedicatória (`01-pre-textuais/02-dedicatoria`)
- [ ] Agradecimentos (`01-pre-textuais/03-agradecimentos`)
- [ ] Epígrafe (`01-pre-textuais/04-epigrafe`)
- [ ] Resumo (`01-pre-textuais/05-resumo-pt`)
- [ ] Abstract (`01-pre-textuais/06-abstract-en`)
- [ ] Lista de Figuras/Ilustrações (`\listfigurename`)
- [ ] Lista de Algoritmos (`\listofalgorithmes`)
- [ ] Lista de Tabelas (`\listtablename`)
- [ ] Lista de Abreviaturas e Siglas (`01-pre-textuais/07-lista-abreviaturas-siglas`)
- [ ] Lista de Símbolos (`01-pre-textuais/08-lista-simbolos`)
- [ ] Sumário (Índice) (`\contentsname`)

### Elementos Textuais
- [ ] Introdução (`02-textuais/01-01-introducao`)
- [ ] Fundamentação Teórica (`02-textuais/02-fundamentacao-teorica.tex`)
- [ ] Trabalhos Correlatos (`02-textuais/03-trabalhos-correlatos`)
- [ ] Metodologia (`02-textuais/04-metodologia`)
- [ ] Resultados e Discussão (`02-textuais/05-resultados-discussao`)
- [ ] Conclusão (`02-textuais/06-conclusao`)

### Elementos Pós-Textuais
- [ ] Referências (`\bibliography{referencias}`)
- [ ] Apêndices (`03-pos-textuais/01-apendices`)
- [ ] Anexos (`03-pos-textuais/02-anexos`)

---

## Como Usar
1. Abra o arquivo `main.tex` e preencha seus dados na seção indicada.
2. Edite o conteúdo pré-textual nos arquivos numerados dentro da pasta `01-pre-textuais/`.
3. Edite o conteúdo textual nos arquivos numerados dentro da pasta `02-textuais/`.
4. Edite o conteúdo pós-textual nos arquivos numerados dentro da pasta `03-pos-textuais/`.
5. Adicione suas referências no arquivo `referencias.bib`.
