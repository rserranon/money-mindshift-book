BASE_NAME=book

all: $(BASE_NAME).html $(BASE_NAME).pdf $(BASE_NAME).xml $(BASE_NAME).docx $(BASE_NAME).epub $(BASE_NAME).md $(BASE_NAME).confluence

$(BASE_NAME).html: prepare
	asciidoctor $(BASE_NAME).adoc -o output/$(BASE_NAME).html

$(BASE_NAME).pdf: prepare
	asciidoctor-pdf $(BASE_NAME).adoc -a pdf-style=my -o output/$(BASE_NAME).pdf

$(BASE_NAME).xml: prepare
	asciidoctor -b docbook5 -d article $(BASE_NAME).adoc -a pdf-style=my -o output/$(BASE_NAME).xml

$(BASE_NAME).docx: $(BASE_NAME).xml
	pandoc -f docbook -t docx output/$(BASE_NAME).xml -o output/$(BASE_NAME).docx

# change to generate edoc from another input
$(BASE_NAME).epub: $(BASE_NAME).xml
	pandoc -f docbook -t epub3 output/$(BASE_NAME).xml -o output/$(BASE_NAME).epub

$(BASE_NAME).md: prepare $(BASE_NAME).xml
	pandoc -f docbook -t markdown_github -s --toc output/$(BASE_NAME).xml -o output/$(BASE_NAME).md

# https://github.com/jedi4ever/markdown2confluence
$(BASE_NAME).confluence: prepare $(BASE_NAME).md
	markdown2confluence output/$(BASE_NAME).md > output/$(BASE_NAME).confluence

prepare:
	mkdir -p output
