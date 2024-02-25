PREFIX = /usr
ETCDIR = /etc

all:
	@printf "Run 'make install' to install Alis Hello.\n"

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@mkdir -p $(DESTDIR)$(PREFIX)/share
	@mkdir -p $(DESTDIR)$(PREFIX)/share/applications
	@mkdir -p $(DESTDIR)$(PREFIX)/share/licenses/alis-hello
	@cp -p alis-hello $(DESTDIR)$(PREFIX)/bin/alis-hello
	@cp -p alis-hello.desktop $(DESTDIR)$(PREFIX)/share/applications/alis-hello.desktop
	@cp -p LICENSE $(DESTDIR)$(PREFIX)/share/licenses/alis-hello/LICENSE
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/alis-hello

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/alis-hello
	@rm -rf $(DESTDIR)$(PREFIX)/share/applications/alis-hello.desktop
	@rm -rf LICENSE $(DESTDIR)$(PREFIX)/share/licenses/alis-hello/LICENSE
