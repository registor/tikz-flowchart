SUBDIRS := $(sort $(dir $(wildcard samples/*/*)))
NAME = tikz-flowchart

.PHONY: all $(SUBDIRS) clean

all: $(SUBDIRS)
	xelatex $(NAME).ins
	xelatex --interaction=nonstopmode $(NAME).dtx
	xelatex --interaction=nonstopmode $(NAME).dtx
	makeindex -s gglo.ist -o $(NAME).gls $(NAME).glo
	xelatex --interaction=nonstopmode $(NAME).dtx
	xelatex --interaction=nonstopmode $(NAME).dtx

$(SUBDIRS):  ; $(MAKE) -C $@ $(MAKECMDGOALS)

clean: $(SUBDIRS)
	--@rm -rf *.aux *.glo *.gls *.ilg *.log *.out *.toc
