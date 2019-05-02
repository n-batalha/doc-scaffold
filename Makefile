DATE := $(shell date "+%B %e, %Y")
PANDOC = pandoc -M date="${DATE}" --toc --toc-depth=6 src/main.rst

BUILD_DIR = .build

all: pdf

outdir:
	mkdir -p ${BUILD_DIR}

watch-%:
	inotifywait -m -e modify,close_write,move,move_self,create,delete,delete_self -r -q -r src/* | \
		while read; do make $*; done \

%:
	${PANDOC} -o ${BUILD_DIR}/doc.$*
