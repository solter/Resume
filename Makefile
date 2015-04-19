all: PetersResume.pdf

PetersResume.pdf: coverletter.pdf resume.pdf 
	convert $^ $@

%.pdf: %.tex
	pdflatex $^

clean:
	rm -f *.aux
	rm -f *.out
	rm -f *.log
