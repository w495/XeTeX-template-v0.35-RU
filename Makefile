
TeX=xelatex
Mi=makeindex
Del=rm -f
Src=template

all: index pdf
	$(TeX) $(Src)

pdf:
	$(TeX) $(Src)

index: pdf
	$(Mi) $(Src)

clean:
	$(Del) $(Src).aux
	$(Del) $(Src).idx
	$(Del) $(Src).ilg
	$(Del) $(Src).ind
	$(Del) $(Src).log
	$(Del) $(Src).out	
	$(Del) $(Src).pdf
	$(Del) $(Src).toc
