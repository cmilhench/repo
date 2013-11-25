PREFIX ?= /usr/local

install: bin/repo
	@cp -p $< $(PREFIX)/$<
	@echo
	@echo repo installed
	@echo

uninstall:
	@rm -f $(PREFIX)/bin/repo
	@echo
	@echo repo uninstalled
	@echo

.PHONY: install uninstall