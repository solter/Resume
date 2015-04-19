all: PetersResume.pdf

#change the dependencies to switch what gets merged/created
PetersResume.pdf: coverletter.pdf resume.pdf
	pdftk $^ cat output $@

%.pdf: %.tex
	pdflatex $^

clean:
	rm -f *.aux
	rm -f *.out
	rm -f *.log
