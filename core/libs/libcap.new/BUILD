make KERNEL_HEADERS=/usr/include &&

prepare_install &&

make prefix=/usr/lib RAISE_SETFCAP=no install

install -Dm644 pam_cap/capability.conf /usr/share/doc/$MODULE/capability.conf.example
