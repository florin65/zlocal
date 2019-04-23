# Does not automatically pick up $CFLAGS
make CXFLAGS="$CFLAGS" BINDIR=/usr/bin UDEVDIR=/usr/lib/udev &&

prepare_install &&

make INSTALL=/usr/bin/install BINDIR=/usr/bin UDEVDIR=/usr/lib/udev install &&

if module_installed systemd; then
   make SYSTEMD_DIR=/usr/lib/systemd/system install-systemd
fi
