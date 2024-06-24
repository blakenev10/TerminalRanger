PREFIX = /usr/local

install:
	@echo "Installing rrpull to $(PREFIX)/bin"
	@install -m 755 rrpull $(PREFIX)/bin/rrpull

	@echo "Installing rrinstall to $(PREFIX)/bin"
	@install -m 755 rrinstall $(PREFIX)/bin/rrinstall

	@echo "Installing rrbuild to $(PREFIX)/bin"
	@install -m 755 rrbuild $(PREFIX)/bin/rrbuild

uninstall:
	@echo "Removing rrpull from $(PREFIX)/bin"
	@rm -f $(PREFIX)/bin/rrpull

	@echo "Removing rrinstall from $(PREFIX)/bin"
	@rm -f $(PREFIX)/bin/rrinstall

	@echo "Removing rrbuild from $(PREFIX)/bin"
	@rm -f $(PREFIX)/bin/rrbuild
