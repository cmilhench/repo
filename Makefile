PREFIX ?= /usr/local

install: bin/repo
	@cp -p $< $(PREFIX)/$<

uninstall:
	rm -f $(PREFIX)/bin/repo

.PHONY: install uninstall