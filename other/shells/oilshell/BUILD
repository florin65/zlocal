OPTS+="--with-readline"

default_config &&
make &&
prepare_install &&

# the install script doesn't support DESTDIR
install -Dm755 _bin/oil.ovm "/usr/bin/"
ln -sf /usr/bin/oil.ovm "/usr/bin/osh"
ln -sf /usr/bin/oil.ovm "/usr/bin/oshc"
ln -sf /usr/bin/oil.ovm "/usr/bin/oil"

# install manpage
install -Dm644 doc/osh.1 "/usr/share/man/man1/"
