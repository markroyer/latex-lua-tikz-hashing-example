NAME=hashing

default: pdf

pdf: $(NAME).pdf

$(NAME).pdf: $(NAME).tex lstcustom.sty
	lualatex $(NAME).tex
	# Run latex twice for references
	lualatex $(NAME).tex

clean:
	rm -f *~ $(addprefix $(NAME).,aux log nav vrb out snm toc pdf) luadebug.lua