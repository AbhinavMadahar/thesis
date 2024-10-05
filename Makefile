# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# BUILD CONFIGURATION VARIABLES
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

LATEX_COMPILER = xelatex
BIBTEX_COMPILER = bibtex


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# OVERALL STRUCTURE
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

all: thesis experiment analysis library

.PHONY: clean

clean: thesis--clean

watch:
	while true; do \
		$(MAKE); \
		inotifywait -qre close_write .; \
	done

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# EXPERIMENTS
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# TODO
experiment: ;

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# ANALYSES
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# TODO
analysis: ;

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# LIBRARIES
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# TODO
library: ;

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# THESIS DOCUMENT
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.PHONY: thesis thesis--clean

thesis: thesis/thesis.pdf thesis/thesis-boomer.pdf

thesis/thesis.pdf: thesis/* $(filter-out thesis/thesis.pdf, $(shell find thesis -type f))
	cd thesis && \
		${LATEX_COMPILER} -jobname='thesis' '\documentclass{amsbook} \newif\ifboomer \boomerfalse \input{thesis.tex}' && \
		${LATEX_COMPILER} -jobname='thesis' '\documentclass{amsbook} \newif\ifboomer \boomerfalse \input{thesis.tex}' && \
		rm -f thesis.aux thesis.log thesis.out thesis.toc **/*.aux **/*.log texput.*

thesis/thesis-boomer.pdf: thesis/* $(filter-out thesis/thesis.pdf thesis/thesis-boomer.pdf, $(shell find thesis -type f))
	cd thesis && \
		${LATEX_COMPILER} -jobname='thesis-boomer' '\documentclass{amsbook} \newif\ifboomer \boomertrue \input{thesis.tex}' && \
		${LATEX_COMPILER} -jobname='thesis-boomer' '\documentclass{amsbook} \newif\ifboomer \boomertrue \input{thesis.tex}' && \
		rm -f thesis-boomer.aux thesis-boomer.log thesis-boomer.out thesis-boomer.toc **/*.aux **/*.log texput.*

thesis--clean:
	rm -f thesis/thesis.pdf thesis/thesis-boomer.pdf
