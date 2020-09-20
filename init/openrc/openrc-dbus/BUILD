prepare_install &&

install -Dm755 $SOURCE_CACHE/$SOURCE /etc/init.d/dbus &&

sed -e 's|#!/sbin/openrc-run|#!/usr/bin/openrc-run|g' \
    -e 's|/var/run|/run|g' \
    -e 's|dbus.pid|dbus/pid|g' \
    -i /etc/init.d/dbus
