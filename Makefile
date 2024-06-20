# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# BUILD CONFIGURATION VARIABLES
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

LATEX_COMPILER = xelatex
BIBTEX_COMPILER = bibtex


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# OVERALL STRUCTURE
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

all: thesis

.PHONY: clean

clean: thesis--clean


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# THESIS DOCUMENT
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.PHONY: thesis thesis--clean

thesis: thesis/thesis.pdf

thesis/thesis.pdf: thesis/* $(filter-out thesis/thesis.pdf, $(wildcard thesis/**/*))
	cd thesis && \
		${LATEX_COMPILER} '\newcommand{\mode}{director} \input{thesis.tex}' && \
		${LATEX_COMPILER} '\newcommand{\mode}{director} \input{thesis.tex}' && \
		rm -f thesis.aux thesis.log thesis.out **/*.aux **/*.log

thesis/thesis-boomer.pdf: thesis/* $(filter-out thesis/thesis.pdf, $(wildcard thesis/**/*))
	cd thesis && \
		${LATEX_COMPILER} -jobname='thesis-boomer' '\newcommand{\mode}{boomer} \input{thesis.tex}' && \
		${LATEX_COMPILER} -jobname='thesis-boomer' '\newcommand{\mode}{boomer} \input{thesis.tex}' && \
		rm -f thesis-boomer.aux thesis-boomer.log thesis-boomer.out **/*.aux **/*.log

thesis--clean:
	rm thesis/thesis.pdf
