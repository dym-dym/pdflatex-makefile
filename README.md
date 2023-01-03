# pdflatex Makefile

A general pupose pdflatex makefile to aid manipulations and compilation 

# Usage

## Dependencies

git must be installed to use the `init` part or the makefile. pdflatex and bibtex are also required for document compilation.

## Usage

clone this repo and copy the `Makefile` in your working folder.
Open the makefile with a text editor and modify the `FILENAME` and `READER` lines to the name of your project and your pdf viewer of choice.

Execute the following command to initalise the directory structure and git repo.
```bash
make init
```

To compile your project execute :
```bash
make pdf
```

Also available :
```bash
make read  # to read your pdf in the pdf viewer you set up earlier
make clean # to remove compilation artifacts
```

PDF file is compiled in `target/pdf`
