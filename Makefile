# Makefile
# 
# Copyright (C) 2026 James Petersen <m@jamespetersen.ca>
# Licensed under MIT. See LICENSE.

IN_PACKAGE := quickderivs.sty quickderivs-doc.pdf quickderivs-doc.tex LICENSE README.md

default: quickderivs.tar.gz

quickderivs-doc.pdf: quickderivs-doc.tex quickderivs.sty
	pdflatex $<

quickderivs.tar.gz: $(IN_PACKAGE)
	rm -r quickderivs >/dev/null 2>&1 || true
	mkdir quickderivs
	cp $(IN_PACKAGE) quickderivs
	tar czvf $@ quickderivs

.PHONY: default
