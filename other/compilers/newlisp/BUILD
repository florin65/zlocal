default_config &&
[[ $(arch) == x86_64 ]] && make -f makefile_linuxLP64_utf8
[[ $(arch) == i686 ]]   && make -f makefile_linux_utf8

prepare_install &&

install -d /usr/share/man/man1 &&
make bindir=/usr/bin mandir=/usr/share/man datadir=/usr/share install
