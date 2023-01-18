filename=proj1

pdf: ps
	ps2pdf ${filename}.ps

ps:	dvi
	dvips -t A4 ${filename}.dvi

dvi:
	latex ${filename}
	bibtex ${filename}||true
	latex ${filename}
	latex ${filename}

clean:
	rm -f ${filename}.{ps,pdf,dvi}