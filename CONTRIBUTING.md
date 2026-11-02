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

# Como contribuir

Obrigado pelo interesse. Este modelo é aberto e melhora com o uso: relatos de erro,
divergências com a norma e correções são bem-vindos.

## Antes de abrir uma issue

1. Confira se já existe uma issue parecida em
   [Issues](https://github.com/MikaelGois/Modelo-LaTex-TCC-IFS/issues?q=is%3Aissue).
2. Se for **dúvida de uso** (como compilar, onde editar, qual comando usar), veja
   primeiro a seção [Como usar](README.md#como-usar) e a
   [Referência rápida de comandos](README.md#referência-rápida-de-comandos) do README.
3. Se for **divergência com a norma**, confirme a cláusula na edição vigente
   (a norma não é redistribuída aqui — use o acesso institucional, GEDWEB/campus).

## Abrir uma issue (problema, dúvida ou divergência)

Clique em **New issue** e escolha o modelo:

### Divergência ABNT/IBGE

Informe:

- **Norma e cláusula** (ex.: `NBR 14724:2024, 5.2.2`);
- **Arquivo e linha** (ex.: `structure.sty, linha 87`);
- **Trecho do modelo** (o que o modelo faz hoje);
- **O que a norma pede** (o que deveria ser);
- **Medição**, se for de espaçamento (ex.: "medido 17,56 pt; a norma pede 1,25 cm");
- **Versão** do modelo (commit, tag ou data do download).

### Erro de compilação ou bug

Informe:

- **Sistema operacional** (Windows/Linux/macOS);
- **Distribuição TeX e versão** (MiKTeX ou TeX Live) e a versão (`latexmk --version`);
- **Log do erro** (trecho do `main.log` ou a mensagem exibida);
- **Passos para reproduzir**;
- **O que esperava** e **o que aconteceu**.

Se puder, anexe um recorte do PDF (a página) mostrando o problema.

### Se a divergência for entre normas

Se a divergência for entre **normas diferentes** (ABNT x Normativa Interna do IFS x
Manual ABNT), informe **as duas posições**. O projeto registra as duas, sem impor
critério — a decisão fica documentada em `AGENTS.md`.

## Enviar uma correção (pull request)

1. Crie uma branch nova com prefixo `fix/`, `docs/` ou `feat/`.
   **Nunca** commite direto na `main`.
2. Compile e confirme **0 erros**:

   ```
   latexmk -pdf -interaction=nonstopmode -halt-on-error main.tex
   ```

3. Se a correção for de **diagramação/formatação**, informe a **medição antes e
   depois** (ex.: "linha em branco entre referências: 33,71 pt -> 28,90 pt").
4. **Não edite** a pasta `nao-altere/`: são arquivos do abnTeX2 (licença LPPL 1.3c).
5. Mantenha a documentação sincronizada: se mudar um comando, atualize o comentário
   `% DICA` correspondente e a Referência rápida do README.
6. Abra o pull request usando o modelo disponível, descrevendo:
   **problema**, **cláusula aplicada**, **o que mudou** e **como foi verificado**.

## Convenções do projeto

- Uma branch por assunto; commits pequenos e descritivos; sem commit na `main`.
- Os arquivos `.tex` trazem comentários `% DICA` (instrução ao estudante) e
  `% EXEMPLO` (conteúdo de exemplo que deve ser substituído).
- O conteúdo textual do modelo é genérico (placeholders) e não deve conter dados
  pessoais reais de terceiros.
- Imagens: use apenas imagens com licença compatível e **credite a fonte**
  (ver `NOTICE`).
