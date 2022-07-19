LATEX := $(rg --files -tlatex)

all: .latex/format.fmt $(LATEX)
	latexmk

.latex/format.fmt: $(LATEX) format.sty dieudonne.sty
	mkdir -p .latex
	pdflatex --output-dir=.latex -ini -jobname="format" "&pdflatex format.sty\dump"

clean:
	rm -rf .latex/* -v

.PHONY: all clean
