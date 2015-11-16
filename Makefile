SRC=src
DIST=dist
MINIFY=node_modules/.bin/htmlminify

.PHONY: all
all:
	@echo 'make all: starting'

	@rm -rf $(DIST)/
	@mkdir $(DIST)
	@cp $(SRC)/blog.jpg \
			$(SRC)/favicon.ico \
			$(SRC)/opengraph.jpg \
			$(SRC)/shell.png \
			$(SRC)/snake.png \
			$(SRC)/paintings.jpg \
			$(DIST)/
	@$(MINIFY) -o $(DIST)/index.html $(SRC)/index.html

	@echo 'make all: done'

.PHONY: clean
clean:
	@echo 'make clean: starting'
	rm -rf $(DIST)/
	@echo 'make clean: done'
