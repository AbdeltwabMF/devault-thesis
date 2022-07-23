TARGET = main

# ANSI colors for shell output
BLACK := \033[0;30m
RED := \033[0;31m
GREEN := \033[0;32m
YELLOW := \033[0;33m
BLUE := \033[0;34m
PURPLE := \033[0;35m
CYAN := \033[0;36m
WHITE := \033[0;37m
NC := \033[0m # No Color

# ANSI colors for shell output (bold)
BBLACK := \033[1;30m
BRED := \033[1;31m
BGREEN := \033[1;32m
BYELLOW := \033[1;33m
BBLUE := \033[1;34m
BPURPLE := \033[1;35m
BCYAN := \033[1;36m
BWHITE := \033[1;37m

all:
	@printf "%b" "$(BYELLOW)Building $(TARGET)...\n$(NC)"
	pdflatex $(TARGET).tex >/dev/null
	@printf "%b" "$(BBLUE)Compiling the bibliography...\n$(NC)"
	bibtex $(TARGET) >/dev/null
	@printf "%b" "$(BCYAN)Refreshing the target file...\n$(NC)"
	pdflatex $(TARGET).tex >/dev/null
	@printf "%b" "$(BGREEN)Done.\n$(NC)"
	zathura $(TARGET).pdf

clean:
	@printf "%b" "$(WHITE)Cleaning...\n$(NC)"
	rm -rf $(shell find . -type f -iname \*.log -o -iname \*.toc -o -iname \*.ist -o -iname \*.aux -o -iname \*.out -o -iname \*.blg -o -iname \*.bbl -o -iname \*.bak -o -iname \*.lof -o -iname \*.lot -o -iname \*.idx -o -iname \*.ind -o -iname \*.ilg -o -iname \*.glo -o -iname \*.gls -o -iname \*.glsdef -o -iname \*.glsdel -o -iname \*.glsnew -o -iname \*.run.xml -o -iname \*-blx.bib -o -iname \*.acr -o -iname \*.acn -o -iname \*.alg -o -iname \*.glg)
	@printf "%b" "$(PURPLE)Cleaning Done.$(NC)\n"

.PHONY : all clean
