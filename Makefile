DATE := $(shell date "+%B %e, %Y")
PANDOC = pandoc -M date="${DATE}" --toc --toc-depth=6 src/main.rst

BUILD_DIR = .build
PDF = ${BUILD_DIR}/doc.pdf
WORD = ${BUILD_DIR}/doc.docx

all: ${PDF}

outdir:
	mkdir -p ${BUILD_DIR}

pdf: ${PDF}

${PDF}: outdir
	${PANDOC} -o ${PDF}

word: ${WORD}

${WORD}: outdir
	${PANDOC} -o ${WORD}

watch-%:
	inotifywait -m -e modify,close_write,move,move_self,create,delete,delete_self -r -q -r src/* | \
		while read; do make $*; done \
