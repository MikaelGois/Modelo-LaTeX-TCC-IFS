# .latexmkrc - fixa a versao do abnTeX2 que esta no repositorio
#
# Sem isto, o LaTeX pega o abnTeX2 instalado na maquina (MiKTeX/TeX Live/Overleaf),
# que pode ser outra versao. Com os caminhos abaixo, `nao-altere/` tem prioridade,
# tanto para a classe/estilos (TEXINPUTS) quanto para o estilo BibTeX (BSTINPUTS).
#
# `ensure_path` existe no latexmk 4.52 ou superior.

ensure_path('TEXINPUTS', 'nao-altere//');
ensure_path('BSTINPUTS', 'nao-altere//');
