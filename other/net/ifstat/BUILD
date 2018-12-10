OPTS+=" --without-snmp"

default_config &&
make &&
prepare_install &&

install -Dm755 ifstat2 /usr/bin/ifstat2 &&
install -Dm644 ifstat2.1 /usr/share/man/man1/ifstat2.1
