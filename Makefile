DOCUMENTS=resume.pdf

all: $(DOCUMENTS)

clean:
	rm -rf $(DOCUMENTS) *.aux *.log *.out

%.pdf: %.tex icons/*.png
	xelatex $^

.PHONY: all clean
