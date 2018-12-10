# Does not automatically pick up $CFLAGS
make CXFLAGS="$CFLAGS" BINDIR=/usr/bin UDEVDIR=/usr/lib/udev &&

# build static mdassemble for initramfs
make MDASSEMBLE_AUTO=1 mdassemble &&

prepare_install &&

make INSTALL=/usr/bin/install BINDIR=/usr/bin UDEVDIR=/usr/lib/udev install &&

install -D -m755 mdassemble /usr/bin/mdassemble
