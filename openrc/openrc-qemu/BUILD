prepare_install &&

./install &&

sed -e 's|#!/sbin/openrc-run|#!/usr/bin/openrc-run|g' \
    -e 's|/var/run|/run|g' \
    -i /etc/init.d/qemu
