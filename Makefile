FILENAME		= main
LATEX 			= pdflatex 
FIGS				= images
AUXDIR 			= target/intermediary
OUTPUTDIR		= target/pdf
OUTPUTFILE 	= ${AUXDIR}/${FILENAME}.pdf
READER 			= zathura			

pdf:
	${LATEX} --output-directory=${AUXDIR} ${FILENAME} 
	bibtex ${AUXDIR}/${FILENAME}.aux||true
	${LATEX} --output-directory=${AUXDIR} ${FILENAME}
	${LATEX} --output-directory=${AUXDIR} ${FILENAME}
	mv ${OUTPUTFILE} ${OUTPUTDIR}/

init:
	mkdir -p ${FIGS}/ ${AUXDIR}/ ${OUTPUTDIR}
	git init
	touch .gitignore
	echo "target/" | cat > .gitignore 

read:
	${READER} ${OUTPUTDIR}/${FILENAME}.pdf &

clean:
	rm ${OUTPUTDIR}/* ${AUXDIR}/*
