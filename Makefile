all: PeterSolfestResume.pdf

#change the dependencies to switch what gets merged/created
# i.e. SolfestResume.pdf: Numerica.tex resume.pdf references.pdf
PeterSolfestResume.pdf: resume.pdf
	pdftk $^ cat output $@

%.pdf: %.tex
	mkdir -p obj
	pdflatex -output-directory obj $^
	mv obj/$@ $@

clean:
	rm -f *.aux
	rm -f *.out
	rm -f *.log
	rm -rf obj
	# delete all pdf's except the actual resume
	find . -name "PeterSolfestResume.pdf" -or -name "*.pdf" -delete
