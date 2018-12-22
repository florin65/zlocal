prepare_install &&

./install &&

sedit 's:/sbin:/usr/bin:' /etc/init.d/qemu-binfmt

sed -e 's|#!/sbin/openrc-run|#!/usr/bin/openrc-run|g' \
    -e 's|/var/run|/run|g' \
    -i /etc/init.d/qemu
