
IN_PACKAGE := jpdv.pdf jpdv.sty LICENSE

default: jpdv.tar.gz

jpdv.pdf: jpdv.ltx jpdv.sty
	pdflatex $<

jpdv.tar.gz: $(IN_PACKAGE)
	tar czf $@ $^

.PHONE: default
