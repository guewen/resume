LANGS=en
TARGETS=$(addprefix GuewenBaconnier_,$(LANGS))
PDF_TARGETS=$(addsuffix .pdf,$(TARGETS))

all: pdf html

pdf: $(PDF_TARGETS)

frenchcv: GuewenBaconnier_fr.pdf
englishcv: GuewenBaconnier_en.pdf

%.pdf: %.tex
	# xelatex -interaction=batchmode $<
	pdflatex $<

clean:
	rm -f *.aux *.log *.out
	rm -f *.pdf
