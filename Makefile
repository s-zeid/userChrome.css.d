DEST := userChrome.css

all: ${DEST}
.PHONY: ${DEST}

${DEST}: $(filter-out ${DEST} $(wildcard _*),$(wildcard *.css))
	printf '' > $@
	for i in $^; do \
	 printf '@import url("userChrome.css.d/%s");\n' $$i >> $@; \
	done
