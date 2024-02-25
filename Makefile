PREFIX = /usr
ETCDIR = /etc

all:
	@printf "Run 'make install' to install Univalent Hello.\n"

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@mkdir -p $(DESTDIR)$(PREFIX)/share
	@mkdir -p $(DESTDIR)$(PREFIX)/share/applications
	@mkdir -p $(DESTDIR)$(PREFIX)/share/licenses/univalent-tools
	@cp -p univalent-hello $(DESTDIR)$(PREFIX)/bin/univalent-hello
	@cp -p univalent-hello.desktop $(DESTDIR)$(PREFIX)/share/applications/univalent-hello.desktop
	@cp -p LICENSE $(DESTDIR)$(PREFIX)/share/licenses/univalent-tools/LICENSE
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/univalent-hello

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/univalent-hello
	@rm -rf $(DESTDIR)$(PREFIX)/share/applications/univalent-hello.desktop
	@rm -rf LICENSE $(DESTDIR)$(PREFIX)/share/licenses/univalent-tools/LICENSE
