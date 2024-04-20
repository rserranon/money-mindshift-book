# Introduction

This project is an asciidoc syntax respository thet uses asciidoctor and Pandoc tools to generate different file formats for the book:
* HTML
* PDF
* Epub
* Docx

# Directory structure and important files

This is the project directory structure:
```
.
├── LICENSE
├── Makefile
├── README.md
├── book.adoc
├── example.adoc
├── foreword.adoc
├── glossary.adoc
├── icons/
├── images/
├── output/
├── preface.adoc
└── themes
├── epub3.css
├── my-stylesheet.css
└── my-theme.yml
```


The files to edit in Asciidoctor syntax are:
* preface.adoc 
* book.adoc


# Instructions

1. [Install asciidoctor] (https://docs.asciidoctor.org/asciidoctor/latest/install/)


2. [Install Pandoc] (https://pandoc.org/installing.html)

3. Clone repository

```shell
> git clone https://github.com/rserranon/money-mindshift-book.git
```

4. Run Makefile
```
> make
```

5. Open the desired files generated in the output/ directory

