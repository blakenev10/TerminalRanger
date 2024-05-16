PREFIX = /usr/local

install:
	@echo "Installing rrpull to $(PREFIX)/bin"
	@install -m 755 rrpull $(PREFIX)/bin/rrpull

uninstall:
	@echo "Removing rrpull from $(PREFIX)/bin"
	@rm -f $(PREFIX)/bin/rrpull
