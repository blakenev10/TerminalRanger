PREFIX = /usr/local

install:
	@echo "Installing rrpull to $(PREFIX)/bin"
	@install -m 755 rrpull $(PREFIX)/bin/rrpull

	@echo "Installing rrmaker to $(PREFIX)/bin"
	@install -m 755 rrmaker $(PREFIX)/bin/rrmaker

uninstall:
	@echo "Removing rrpull from $(PREFIX)/bin"
	@rm -f $(PREFIX)/bin/rrpull

	@echo "Removing rrmaker from $(PREFIX)/bin"
	@rm -f $(PREFIX)/bin/rrmaker
