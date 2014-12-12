RONN = ronn
RONNFLAGS = --pipe --warnings

ALLMAN += man/node-update.8
ALLMAN += man/node-update.8.html
ALLMAN += man/node-update.8.md

all: man

clean:
	$(RM) $(ALLMAN)

man: $(ALLMAN)

man/%: man/%.ronn
	$(RONN) $(RONNFLAGS) --roff $< > $@

man/%.html: man/%.ronn
	$(RONN) $(RONNFLAGS) --html --style toc $< > $@

man/%.md: man/%.ronn
	$(RONN) $(RONNFLAGS) --markdown $< > $@
