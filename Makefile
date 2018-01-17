prefix = /usr/local
systemd_prefix = ~/.config

install: xgs.sh xgs.service
	install -Dm755 $< $(DESTDIR)$(prefix)/bin/$<
	install -Dm644 xgs.service $(DESTDIR)$(systemd_prefix)/systemd/system/xgs.service

uninstall:
	rm -rf $(DESTDIR)$(prefix)/bin/xgs.sh
	rm -rf $(DESTDIR)$(systemd_prefix)/systemd/system/xgs.service
