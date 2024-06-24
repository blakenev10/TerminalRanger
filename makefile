PREFIX = /usr/local

install:
	@echo "Installing rrpull to $(PREFIX)/bin"
	@install -m 755 rrpull $(PREFIX)/bin/rrpull

	@echo "Installing rrinstall to $(PREFIX)/bin"
	@install -m 755 rrinstall $(PREFIX)/bin/rrinstall

uninstall:
	@echo "Removing rrpull from $(PREFIX)/bin"
	@rm -f $(PREFIX)/bin/rrpull
