TEXSRC=template

# TeX
# --------------------------------------
TEXC=xelatex 
IDXC=makeindex
BIBC=bibtex

# Clean
# --------------------------------------
DEL=rm -f


# Exec
# ======================================================================

# TeX
# --------------------------------------------------
all: biblio one
	$(TEXC) $(TEXSRC)
pdf: biblio one
	$(TEXC) $(TEXSRC)
index: one
	$(IDXC) $(TEXSRC)
biblio: one
	$(BIBC) $(TEXSRC)
one:
	$(TEXC) $(TEXSRC)


# Clean
# --------------------------------------------------
cleanall: clean
	$(DEL) $(TEXSRC).pdf
clean:
	$(DEL) *~
	$(DEL) $(TEXSRC).aux
	$(DEL) $(TEXSRC).bbl
	$(DEL) $(TEXSRC).brf
	$(DEL) $(TEXSRC).blg
	$(DEL) $(TEXSRC).idx
	$(DEL) $(TEXSRC).ilg
	$(DEL) $(TEXSRC).ind
	$(DEL) $(TEXSRC).log
	$(DEL) $(TEXSRC).out
	$(DEL) $(TEXSRC).toc
