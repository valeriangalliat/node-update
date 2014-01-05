a2x = a2x
asciidoc = asciidoc

all: bin bin/node-update doc/node-update.8 doc/node-update.8.html

clean:
	rm -fr \
		bin \
		doc/node-update.8 \
		doc/node-update.8.html

.PHONY: all clean

bin:
	mkdir $@

bin/node-update: src/node-update.sh
	echo "#!$$(which sh)" > $@
	echo >> $@
	cat $< >> $@
	chmod +x $@

doc/node-update.8: doc/node-update.8.txt
	$(a2x) -f manpage --no-xmllint $<

doc/node-update.8.html: doc/node-update.8.txt
	$(asciidoc) $<
